function [EEG] = elektro_bdfimport(CFG)
% wm: THIS FUNCTION STILL NEEDS A PROPER DOCUMENTATION!
%
% (c) Niko Busch & Wanja Mössing
% (contact: niko.busch@gmail.com, w.a.moessing@gmail.com)
%
%  This program is free software: you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation, either version 3 of the License, or
%  (at your option) any later version.
%
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
%
%  You should have received a copy of the GNU General Public License
%  along with this program. If not, see <http://www.gnu.org/licenses/>.

elektro_status('Importing rawdata');
bdfname = [CFG.dir_raw CFG.subject_name '.bdf'];
if ~exist(bdfname,'file')
    error('%s Does not exist!\n', bdfname)
else
    fprintf('Importing %s\n', bdfname)
    [EEG, com] = pop_fileio(bdfname);
    EEG = eegh(com, EEG);
end

end