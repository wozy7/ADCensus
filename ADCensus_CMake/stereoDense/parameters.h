#ifndef PARAMETERS_H
#define PARAMETERS_H

#include "libLWImage/LWImage.h"

class PARAMETERS{
	public:
	/*--------------PICTURES---------------*/
	// left and right pictures for disparity computation
	LWImage<float> im[2];

	// height, width of pictures and their product
	int h, w, wh;

	// index of picture for processing (0 or 1)
	int activePicture;

	/*--------------DISPARITY--------------*/
	// disparity range = [dMin;dMax]
	int dMin, dMax;

	/*--------------AD-CENSUS--------------*/
	// window size for Census measure
	int winX, winY;

	// coefficients for AD & Census measures
	float lambdaAD, lambdaCensus;

	/*-----------COST AGREGATION-----------*/
	// parameters for adaptive windows
	int l1, l2, tau1, tau2;

	// number of agregation iterations
	int nbAgregatingIteration;

	// size of adaptive windows
	// for each pixel, the distance to the border of its window is stocked into these tables
	int *upBorders, *downBorders, *leftBorders, *rightBorders;

	// method for adaptive windows
	int patchBorder(const int x, const int y, const int dx, const int dy,
                    LWImage<float>& im);
	int* patchesBorder(const int dx, const int dy);

	/*--------SCANLINE OPTIMIZATION---------*/
	float pi1, pi2;
	int tauSO;

	/*------------REGION VOTING-------------*/
	int nVote;
	int tauS;
	float tauH;

	/*---INITIALIZATION & DEFAULT VALUES---*/
	// initialization of parameters need the 2 images and the disparity range
	PARAMETERS(LWImage<float> image1, LWImage<float> image2,
               int disparityMin, int disparityMax){
		// images
		im[0] = image1;
		im[1] = image2;

		// width and height of images
		h = image1.h;
		w = image1.w;
		wh = w*h;

		// index of active picture
		activePicture = 1;

		// disparity range
		dMin = disparityMin;
		dMax = disparityMax;

		// default values for census measure
		winX = 9;
		winY = 7;
		lambdaAD = 10.0;
		lambdaCensus = 30.0;

		// default values for adaptive window computation
		l1 = 34;
		l2 = 17;
		tau1 = 20;
		tau2 = 6;

		// default value for agregation iterations
		nbAgregatingIteration = 4;

		// compute borders
		upBorders    = patchesBorder( 0, -1);
		downBorders  = patchesBorder( 0,  1);
		leftBorders  = patchesBorder(-1,  0);
		rightBorders = patchesBorder( 1,  0);

		// default values for SO parameters
		pi1 = 1.0;
		pi2 = 3.0;
		tauSO = 15;

		//default values for region voting parameters
		nVote = 5;
		tauS = 20;
		tauH = 0.4f;
	}
    ~PARAMETERS() {
        delete [] upBorders;
        delete [] downBorders;
        delete [] leftBorders;
        delete [] rightBorders;
    }
};

#endif
