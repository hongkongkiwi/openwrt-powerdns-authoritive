#
# Copyright (C) 2015 OpenWrt-dist
#
# This is free software, licensed under the MIT.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=pdns-auth
PKG_VERSION:=auth-3.4.7
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://github.com/PowerDNS/pdns/archive/$(PKG_VERSION).tar.gz
PKG_MD5SUM:=5eda92118fc8f82a0b8b198b859fa37f

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=clowwindy <clowwindy42@gmail.com>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)/$(PKG_NAME)-$(PKG_VERSION)

PKG_INSTALL:=1
PKG_FIXUP:=autoreconf
PKG_USE_MIPS16:=0
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Network
	TITLE:=PowerDNS-Authoritive
	URL:=https://github.com/PowerDNS/pdns
endef

define Package/$(PKG_NAME)/description
 pdns_recursor is a versatile high performance recursing nameserver.
endef

define Package/$(PKG_NAME)/conffiles
#/etc/powerdns/recursor.conf
#/etc/powerdns/forward.conf
endef

define Package/pdns_recursor/install
#	$(INSTALL_DIR) $(1)/etc/init.d
#	$(INSTALL_DIR) $(1)/etc/powerdns
#	$(INSTALL_BIN) ./files/pdns-recursor.init $(1)/etc/init.d/pdns-recursor
#	$(INSTALL_CONF) ./files/recursor.conf $(1)/etc/powerdns/recursor.conf
#	$(INSTALL_CONF) ./files/forward.conf $(1)/etc/powerdns/forward.conf
#	$(INSTALL_DIR) $(1)/usr/sbin
#	$(INSTALL_BIN) $(PKG_BUILD_DIR)/pdns_recursor $(1)/usr/sbin
#	$(INSTALL_BIN) $(PKG_BUILD_DIR)/rec_control $(1)/usr/sbin
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
