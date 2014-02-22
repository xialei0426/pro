/*
Navicat MySQL Data Transfer

Source Server         : sem2
Source Server Version : 50533
Source Host           : sem2:3306
Source Database       : development

Target Server Type    : MYSQL
Target Server Version : 50533
File Encoding         : 65001

Date: 2014-02-16 16:06:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mobile_download_times
-- ----------------------------
DROP TABLE IF EXISTS `mobile_download_times`;
CREATE TABLE `mobile_download_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src_id` int(11) NOT NULL,
  `ota_id` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mobile_download_times
-- ----------------------------
INSERT INTO `mobile_download_times` VALUES ('1', '1', '1', '1', ' http://www.wandoujia.com/apps/com.Qunar ', null, null);
INSERT INTO `mobile_download_times` VALUES ('2', '1', '2', '1', 'http://www.wandoujia.com/apps/ctrip.android.view', null, null);
INSERT INTO `mobile_download_times` VALUES ('3', '2', '1', '1', 'http://zhushou.360.cn/detail/index/soft_id/944?recrefer=SE_D_%E5%8E%BB%E5%93%AA%E5%84%BF', null, null);
INSERT INTO `mobile_download_times` VALUES ('4', '2', '2', '1', 'http://zhushou.360.cn/detail/index/soft_id/2947?recrefer=SE_D_%E6%90%BA%E7%A8%8B', null, null);
INSERT INTO `mobile_download_times` VALUES ('5', '3', '1', '1', 'http://www.anzhi.com/soft_1278851.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('6', '3', '2', '1', 'http://www.anzhi.com/soft_1303337.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('7', '4', '1', '1', 'http://www.nduoa.com/apk/detail/691008', null, null);
INSERT INTO `mobile_download_times` VALUES ('8', '4', '2', '1', 'http://www.nduoa.com/apk/detail/698565', null, null);
INSERT INTO `mobile_download_times` VALUES ('9', '5', '1', '1', 'http://apk.hiapk.com/html/2013/12/2209877.html?module=256&info=u1PqVD9R', null, null);
INSERT INTO `mobile_download_times` VALUES ('10', '5', '2', '1', 'http://apk.hiapk.com/html/2014/01/2257842.html?module=256&info=OmQLeg%3D%3D', null, null);
INSERT INTO `mobile_download_times` VALUES ('11', '6', '1', '1', 'http://apk.91.com/Soft/Android/com.Qunar-49.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('12', '6', '2', '1', 'http://apk.91.com/Soft/Android/ctrip.android.view-38.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('13', '7', '1', '1', 'http://www.appchina.com/app/com.Qunar/', null, null);
INSERT INTO `mobile_download_times` VALUES ('14', '7', '2', '1', 'http://www.appchina.com/app/ctrip.android.view/', null, null);
INSERT INTO `mobile_download_times` VALUES ('15', '8', '1', '1', 'http://www.mumayi.com/android-29184.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('16', '8', '2', '1', 'http://www.mumayi.com/android-28359.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('17', '9', '1', '1', 'http://www.eoemarket.com/soft/19578.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('18', '9', '2', '1', 'http://www.eoemarket.com/soft/17064.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('19', '10', '1', '1', 'http://app.lenovo.com/app/13019919.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('20', '10', '2', '1', 'http://app.lenovo.com/app/13284366.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('21', '11', '1', '1', 'http://android.myapp.com/android/appdetail.jsp?appid=28212&actiondetail=0&pageNo=1&clickpos=1&transactionid=1389694973595243&lmid=1022&softname=%E5%8E%BB%E5%93%AA%E5%84%BF', null, null);
INSERT INTO `mobile_download_times` VALUES ('22', '11', '2', '1', 'http://android.myapp.com/android/appdetail.jsp?appid=42427&actiondetail=0&pageNo=1&clickpos=1&transactionid=1389694955890622&lmid=1022&softname=%E6%90%BA%E7%A8%8B', null, null);
INSERT INTO `mobile_download_times` VALUES ('23', '12', '1', '1', 'http://as.baidu.com/a/item?docid=5387933&pre=web_am_se', null, null);
INSERT INTO `mobile_download_times` VALUES ('24', '12', '2', '1', 'http://as.baidu.com/a/item?docid=5498946&pre=web_am_se', null, null);
INSERT INTO `mobile_download_times` VALUES ('25', '13', '1', '1', 'https://play.google.com/store/apps/details?id=com.Qunar ', null, null);
INSERT INTO `mobile_download_times` VALUES ('26', '13', '2', '1', 'https://play.google.com/store/apps/details?id=ctrip.android.view', null, null);
INSERT INTO `mobile_download_times` VALUES ('27', '14', '1', '2', 'https://itunes.apple.com/cn/app/qu-na-er-lu-xing-ji-piao-jiu/id395096736?mt=8', null, null);
INSERT INTO `mobile_download_times` VALUES ('28', '14', '2', '2', 'https://itunes.apple.com/cn/app/xie-cheng-jiu-dian-ji-piao/id379395415?mt=8', null, null);
INSERT INTO `mobile_download_times` VALUES ('29', '15', '1', '2', 'http://www.25pp.com/ipad/soft/info_525376.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('30', '15', '2', '2', 'http://www.25pp.com/ipad/soft/info_569462.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('31', '16', '1', '2', 'http://app.kuaiyong.com/view/com.qunar.iphoneclient8?selectDevice=1', null, null);
INSERT INTO `mobile_download_times` VALUES ('32', '16', '2', '2', 'http://app.kuaiyong.com/view/ctrip.com?selectDevice=1', null, null);
INSERT INTO `mobile_download_times` VALUES ('33', '17', '1', '2', 'http://app.tongbu.com/395096736_qunaerlvhang.html', null, null);
INSERT INTO `mobile_download_times` VALUES ('34', '17', '2', '2', 'http://app.tongbu.com/379395415_xiechenglvhangjiudianjipiaolvyouhuochepiaomenpiaohangbangonglueyongche.html', null, null);
