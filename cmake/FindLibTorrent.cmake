# - Try to find libtorrent
# Once done this will define
#
#  LIBTORRENT_FOUND - system has libarchive
#  LIBTORRENT_INCLUDE - the libarchive include directory
#  LIBTORRENT_LIBRARY - Link this to use libarchive
#
# Copyright (C) 2012-2016  Dmitriy Vilkov <dav.daemon@gmail.com>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.

include (CheckLibraryExists)
include (FindPackageHandleStandardArgs)

if (NOT LIBTORRENT_FOUND)
    find_path (LIBTORRENT_INCLUDE
               NAMES "libtorrent/torrent.hpp"
               DOC "The LibTorrent include directory")

    find_library (LIBTORRENT_LIBRARY
                  NAMES torrent-rasterbar
                  DOC "The LibTorrent library")

  find_package_handle_standard_args (LibTorrent DEFAULT_MSG LIBTORRENT_INCLUDE LIBTORRENT_LIBRARY)

  mark_as_advanced (LIBTORRENT_INCLUDE LIBTORRENT_LIBRARY)
endif ()
