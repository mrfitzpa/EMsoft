! ###################################################################
! Copyright (c) 2013-2024, Marc De Graef Research Group/Carnegie Mellon University
! All rights reserved.
!
! Redistribution and use in source and binary forms, with or without modification, are 
! permitted provided that the following conditions are met:
!
!     - Redistributions of source code must retain the above copyright notice, this list 
!        of conditions and the following disclaimer.
!     - Redistributions in binary form must reproduce the above copyright notice, this 
!        list of conditions and the following disclaimer in the documentation and/or 
!        other materials provided with the distribution.
!     - Neither the names of Marc De Graef, Carnegie Mellon University nor the names 
!        of its contributors may be used to endorse or promote products derived from 
!        this software without specific prior written permission.
!
! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
! AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
! IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
! ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
! LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
! DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
! SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
! CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
! OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE 
! USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
! ###################################################################
!--------------------------------------------------------------------------
! EMsoft:multibeams.f90
!--------------------------------------------------------------------------
!
! MODULE: multibeams
!
!> @author Marc De Graef, Carnegie Mellon University
!
!> @brief Anything related to dynamical diffraction
! 
!> @details these variables are passed back and forth between the main
!> multi beam program and the various subroutines.  
!
!> @todo prepend MB to all the variable names and propagate into other code
!
!> @date   10/13/98 MDG 1.0 original
!> @date    5/22/01 MDG 2.0 f90
!> @date   11/27/01 MDG 2.1 added kind support
!> @date    3/14/02 MDG 2.2 added CalcDynMat routine
!--------------------------------------------------------------------------
module multibeams

use local

integer(kind=irg),parameter    :: numr = 500                    ! max number of families of reflections in zone
integer(kind=irg)              :: family(numr,48,3), numfam(numr) 
integer(kind=irg),allocatable  :: idx(:)
real(kind=sgl)                 :: glen(numr)                    ! length of g-vectors
real(kind=sgl),allocatable     :: gm(:), V(:,:)
logical,allocatable            :: al(:)                         ! array of allowed reflections
!DEC$ ATTRIBUTES DLLEXPORT :: numr
!DEC$ ATTRIBUTES DLLEXPORT :: family
!DEC$ ATTRIBUTES DLLEXPORT :: numfam
!DEC$ ATTRIBUTES DLLEXPORT :: idx
!DEC$ ATTRIBUTES DLLEXPORT :: glen
!DEC$ ATTRIBUTES DLLEXPORT :: gm
!DEC$ ATTRIBUTES DLLEXPORT :: V
!DEC$ ATTRIBUTES DLLEXPORT :: al

end module multibeams

