function varargout=CaliforniaSRTM
% [Z,C11,CMN,mima,colmap,colrange]=CyprusSRTM
%
% Cyprus SRTM topography
%
% OUTPUT
%
% Z          A tiled version of the topography (optional)
% C11        lon,lat coordinates of the (1,1) element
% CMN        lon,lat coordinates of the (M,N) element
% mima       Minimum/maximum data values      
% colmap     Color map
% colrange   Color range
%
% EXAMPLE:
%
% [Z,C11,CMN,mima,colmap,colrange]=CyprusSRTM;
% save CyprusSRTM3 C11 CMN Z colmap colrange mima
% load CyprusSRTM3
% imagefnan(C11,CMN,Z,colmap,colrange);
%
% Last modified by fjsimons-at-alum.mit.edu, 09/04/2019

% You modify this!
diro='C:/Users/mradi/Documents/MATLAB/CF/California_Map';
% You modify this also, it sets the viewable axes later
zaxis=[32.2 34.7 34.5 35.75];
% You change this also, it sets the range of values being colored
colrange=[-200 4500];

% Read the files along the rows across the columns, sequentially from
% the northernmost, east to west, to the southernmost, east to west; the
% variable tiling tells you how many rows and columns
tiling=[10 11];
files={'N41W125.hgt', 'N41W124.hgt', 'N41W123.hgt', 'N41W122.hgt', 'N41W121.hgt', 'N41W120.hgt', 'N41W119.hgt', 'N41W118.hgt', 'N41W117.hgt', 'N41W116.hgt', 'N41W115.hgt', ...
       'N40W125.hgt', 'N40W124.hgt', 'N40W123.hgt', 'N40W122.hgt', 'N40W121.hgt', 'N40W120.hgt', 'N40W119.hgt', 'N40W118.hgt', 'N40W117.hgt', 'N40W116.hgt', 'N40W115.hgt', ...
       'N39W125.hgt', 'N39W124.hgt', 'N39W123.hgt', 'N39W122.hgt', 'N39W121.hgt', 'N39W120.hgt', 'N39W119.hgt', 'N39W118.hgt', 'N39W117.hgt', 'N39W116.hgt', 'N39W115.hgt', ...
       'N39W125.hgt', 'N38W124.hgt', 'N38W123.hgt', 'N38W122.hgt', 'N38W121.hgt', 'N38W120.hgt', 'N38W119.hgt', 'N38W118.hgt', 'N38W117.hgt', 'N38W116.hgt', 'N38W115.hgt', ...
       'N39W125.hgt', 'N37W124.hgt', 'N37W123.hgt', 'N37W122.hgt', 'N37W121.hgt', 'N37W120.hgt', 'N37W119.hgt', 'N37W118.hgt', 'N37W117.hgt', 'N37W116.hgt', 'N37W115.hgt', ...
       'N39W125.hgt', 'N39W125.hgt', 'N36W123.hgt', 'N36W122.hgt', 'N36W121.hgt', 'N36W120.hgt', 'N36W119.hgt', 'N36W118.hgt', 'N36W117.hgt', 'N36W116.hgt', 'N36W115.hgt', ...
       'N39W125.hgt', 'N39W125.hgt', 'N39W125.hgt', 'N35W122.hgt', 'N35W121.hgt', 'N35W120.hgt', 'N35W119.hgt', 'N35W118.hgt', 'N35W117.hgt', 'N35W116.hgt', 'N35W115.hgt', ...
       'N39W125.hgt', 'N39W125.hgt', 'N39W125.hgt', 'N39W125.hgt', 'N34W121.hgt', 'N34W120.hgt', 'N34W119.hgt', 'N34W118.hgt', 'N34W117.hgt', 'N34W116.hgt', 'N34W115.hgt', ...
       'N39W125.hgt', 'N39W125.hgt', 'N39W125.hgt', 'N39W125.hgt', 'N33W121.hgt', 'N33W120.hgt', 'N33W119.hgt', 'N33W118.hgt', 'N33W117.hgt', 'N33W116.hgt', 'N33W115.hgt', ...
       'N39W125.hgt', 'N39W125.hgt', 'N39W125.hgt', 'N39W125.hgt', 'N39W125.hgt', 'N39W125.hgt', 'N32W119.hgt', 'N32W118.hgt', 'N32W117.hgt', 'N32W116.hgt', 'N32W115.hgt', ...
       };
% 'N37W121.hgt', 'N37W120.hgt', 'N36W123.hgt', 'N36W122.hgt', 'N36W121.hgt', 'N36W120.hgt'
% Resolution in decimal degrees, this you get from the data but is standard
res=3/60/60;
dsize=1201;

try
  [colmap,dax,ziro]=sergeicol;
  colmap=colmap(ziro+1:end,:);
catch
  colmap=jet;
end

% Ready to combine them all
Zall=nan(dsize*tiling(1)-[tiling(1)-1],dsize*tiling(2)-[tiling(2)-1]);

clf
% Initialize
mima=[0 0];
C11=[inf -inf];
CMN=[-inf,inf];
for index=1:length(files)
  % Open file for reading, note that you need big-endian
  fatmpt=fullfile(diro,sprintf('%s.hgt',files{index}));
  %disp(sprintf('Attempting to read the file %s',fatmpt))
  fid=fopen(fatmpt,'r','b');
  try
    % Read the binary identified by the file id
    Z=fread(fid,'int16.hgt');
    % Close the file
    fclose(fid);
    % Reshape to a square and turn around a bit
    Z=[reshape(Z,sqrt(length(Z)),[])]';
    % Replace the "voids" values with not-a-numbers
    Z(Z==-32768)=NaN;
  catch
    Z=nan(dsize,dsize);
  end
  % Tile these things together with the overlap
  ro=ceil(index/tiling(2));
  co=mod(index-1,tiling(2))+1;
  Zall(1+[ro-1]*[dsize-1]:dsize+[ro-1]*[dsize-1],...
       1+[co-1]*[dsize-1]:dsize+[co-1]*[dsize-1])=Z;
  % Evolving sense of scale
  mima=minmax([minmax(Z(:)') mima]);
  % Physical length of the sides in degrees
  physl=(length(Z)-1)*res;
  % The filename coordinates refer to the SW corner, apparently
  lat=str2num(files{index}(2:3))*(1-2*[files{index}(1)=='S']);
  lon=str2num(files{index}(5:7))*(1-2*[files{index}(4)=='W']);
  % Coordinates of the NW and SE corner of the map
  c11=[lon lat+physl];
  cmn=[lon+physl lat];
  % Evolving sense of dimension
  C11=[min(C11(1),c11(1)) max(C11(2),c11(2))];
  CMN=[max(CMN(1),cmn(1)) min(CMN(2),cmn(2))];
  % Now plot it if you can
  try
    h(index)=imagefnan(c11,cmn,Z,colmap,colrange);
    hold on
  end
end

% Clean up if you can
if exist('h')==1
  hold off
  axis(zaxis)
  longticks(gca,2)
  deggies(gca)
  fig2print(gcf,'portrait')
  % Add a custom color bar
  [cb,xcb]=addcb('hor',colrange,colrange,colmap);
  longticks(cb,2)
  set(xcb,'string','topography (m) above WGS84/EGM96 geoid')
  movev(cb,-0.05)
  figdisp
end
  
% Output if so desired
varns={Zall,C11,CMN,mima,colmap,colrange};
varargout=varns(1:nargout);

