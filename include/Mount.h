/*
 * Mount.h
 *
 *  Created on: May 9, 2022
 *      Author: thetimbrick (Timothy Hutchins)
 */

#ifndef INCLUDE_MOUNT_H_
#define INCLUDE_MOUNT_H_

#include <string>

class Mount {
	Mount(std::string dir, std::string mountPoint, int sysType);

	~Mount();
};



#endif /* INCLUDE_MOUNT_H_ */
