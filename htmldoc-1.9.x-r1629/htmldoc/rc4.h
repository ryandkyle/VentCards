//
// "$Id: rc4.h 1614 2009-01-08 06:05:18Z mike $"
//
// RC4 definitions for HTMLDOC, a HTML document processing program.
//
// Copyright 2001-2009 Easy Software Products.
//
// These coded instructions, statements, and computer programs are the
// property of Easy Software Products and are protected by Federal
// copyright law.  Distribution and use rights are outlined in the file
// "COPYING.txt" which should have been included with this file.  If this
// file is missing or damaged please contact Easy Software Products
// at:
//
//     Attn: HTMLDOC Licensing Information
//     Easy Software Products
//     516 Rio Grand Ct
//     Morgan Hill, CA 95037 USA
//
//     http://www.htmldoc.org/
//
// Original code by Rob Earhart
// Copyright 1999 by Carnegie Mellon University, All Rights Reserved
//
// Permission to use, copy, modify, and distribute this software and its
// documentation for any purpose and without fee is hereby granted,
// provided that the above copyright notice appear in all copies and that
// both that copyright notice and this permission notice appear in
// supporting documentation, and that the name of Carnegie Mellon
// University not be used in advertising or publicity pertaining to
// distribution of the software without specific, written prior
// permission.
//
// CARNEGIE MELLON UNIVERSITY DISCLAIMS ALL WARRANTIES WITH REGARD TO
// THIS SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
// FITNESS, IN NO EVENT SHALL CARNEGIE MELLON UNIVERSITY BE LIABLE FOR
// ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
// WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
// ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT
// OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
//

#ifndef _HTMLDOC_RC4_H_
#  define _HTMLDOC_RC4_H_

//
// Include necessary headers...
//

#  include "types.h"


//
// RC4 context...
//

class hdRC4
{
  hdByte	sbox_[256];		// S boxes for encryption
  int		si_, sj_;		// Current indices into S boxes

  public:

		hdRC4() {}
		hdRC4(const hdByte *key, size_t keylen) { init(key, keylen); }

  void		encrypt(const hdByte *input, hdByte *output, size_t len);
  void		init(const hdByte *key, size_t keylen);
};

#endif /* !_HTMLDOC_RC4_H_ */

//
// End of "$Id: rc4.h 1614 2009-01-08 06:05:18Z mike $".
//
