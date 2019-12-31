#ifndef SMALLBOY_GLOBAL_H
#define SMALLBOY_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(SMALLBOY_LIBRARY)
#  define SMALLBOY_EXPORT Q_DECL_EXPORT
#else
#  define SMALLBOY_EXPORT Q_DECL_IMPORT
#endif

#endif // SMALLBOY_GLOBAL_H
