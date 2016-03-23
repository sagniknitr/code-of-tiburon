#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>


using namespace std;
using namespace cv;



static const std::string OPENCV_WINDOW = "Image window";



  const int cameranum=0;
  VideoCapture cap(cameranum);
 
  Mat curr_frame(2,3,CV_8UC3,Scalar(0,0,0));

  bool checkVideo();
  Mat curlImag();



    bool checkVideo()
    {
        if(!cap.isOpened())
        {
                cerr<<"Check Camera"<<"\n";
                return false;
            }
        else
            return true;
    }


    Mat curlImg()
    {

        bool camcheck=checkVideo();
        if(!camcheck)
        {
           cout<<"cannot open video"<<"\n";
           return curr_frame;

        }
        else
         {
        cap.read(curr_frame);


    cvtColor(curr_frame,curr_frame, CV_BGR2GRAY);//Convert to GreyScale
    return curr_frame;
    }
    }
/


int main(int argc,char **argv)
{
   ros::init(argc, argv, "image_converter");
   ros::NodeHandle nh_;
  image_transport::ImageTransport it_(nh_);
  //image_transport::Subscriber image_sub_;
  image_transport::Publisher image_pub_=it_.advertise("webca",1);
  
  sensor_msgs::ImagePtr _publishImage;
  cv_bridge::CvImage _image;
 // ImageConverter ic;
    Mat img=curlImg();
   

    while(1)
    {
    //image_pub_ = it_.advertise(image, 1);
    img=curlImg();
    _image.image=img;

    imshow(OPENCV_WINDOW,img);
    waitKey(3);

    // Output modified video stream
    _publishImage=_image.toImageMsg();
    image_pub_.publish(_publishImage);
     int  c = waitKey(33);
    if ( c == 27 ) break; // break if ESC is pressed
     ros::spinOnce();
   // destroyWindow("Image output");
    //return 0;
    }
  //ros::spin();
  return 0;
}
