;
; Copyright (c) 2013-2024, Marc De Graef Research Group/Carnegie Mellon University
; All rights reserved.
;
; Redistribution and use in source and binary forms, with or without modification, are 
; permitted provided that the following conditions are met:
;
;     - Redistributions of source code must retain the above copyright notice, this list 
;        of conditions and the following disclaimer.
;     - Redistributions in binary form must reproduce the above copyright notice, this 
;        list of conditions and the following disclaimer in the documentation and/or 
;        other materials provided with the distribution.
;     - Neither the names of Marc De Graef, Carnegie Mellon University nor the names 
;        of its contributors may be used to endorse or promote products derived from 
;        this software without specific prior written permission.
;
; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
; ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
; SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
; CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
; OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE 
; USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
; ###################################################################
;--------------------------------------------------------------------------
; EMsoft:Efit_updatePC.pro
;--------------------------------------------------------------------------
;
; PROGRAM: Efit_updatePC.pro
;
;> @author Marc De Graef, Carnegie Mellon University
;
;> @brief compute the x*, y*, z* parameters and display them (optional)
;
;> @date 08/05/16 MDG 1.0 
;--------------------------------------------------------------------------
pro Efit_updatePC,display=display
;
;------------------------------------------------------------
; common blocks
common Efit_widget_common, Efitwidget_s
common Efit_data_common, Efitdata

Efitdata.xstar = (Efitdata.detnumsx*0.5 + Efitdata.detxpc)/float(Efitdata.detnumsx)
Efitdata.ystar = (Efitdata.detnumsy*0.5 + Efitdata.detypc)/float(Efitdata.detnumsx)
Efitdata.zstar = Efitdata.detL / float(Efitdata.detnumsx*Efitdata.detdelta)

if (keyword_set(display)) then begin
  WIDGET_CONTROL, SET_VALUE=string(Efitdata.xstar,FORMAT='(F6.4)'), Efitwidget_s.xstar
  WIDGET_CONTROL, SET_VALUE=string(Efitdata.ystar,FORMAT='(F6.4)'), Efitwidget_s.ystar
  WIDGET_CONTROL, SET_VALUE=string(Efitdata.zstar,FORMAT='(F6.4)'), Efitwidget_s.zstar
endif

end
