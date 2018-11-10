Codebook
================

Table of Contents
-----------------

-   Experimental Design
-   Feature Selection/Description of Original Measurements
-   Data Summarization/Tidy Data
-   Units
-   Variable Name - Tokens
-   Variable Definitions
-   Sourcing/Citations

Experimental Design
-------------------

Information in this data is based on the following study.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Feature Selection/Description of Original Measurements
------------------------------------------------------

The raw data used in this database comes from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals.

Data Summarization/Tidy Data
----------------------------

The mean and standard deviations of each of the feature/domain calculations were extracted and then, in turn, the means of those summary measures were calculated for each subject/activity combination and included in the data table provided.

Note:

Units
-----

-   The acceleration measurements are standard gravity units 'g'.
-   The body acceleration signal obtained by subtracting the gravity from the total acceleration.
-   The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

Variable Name - Tokens
----------------------

The variable names are made of the following tokens to indicate the nature of the measurement in a shortened form:

<table>
<colgroup>
<col width="14%" />
<col width="85%" />
</colgroup>
<thead>
<tr class="header">
<th>Token</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Acc</td>
<td>Acceleration signal separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.</td>
</tr>
<tr class="even">
<td>Body</td>
<td>Signal based on the body of an experiment participant, one of two components derived from the time based signals on the phone's accelerometer</td>
</tr>
<tr class="odd">
<td>Frequency</td>
<td>Measurement based on the &quot;frequency&quot; domain, taken as a Fast Fourier Transform of the time-based signals</td>
</tr>
<tr class="even">
<td>Gravity</td>
<td>Signal based on gravity, the force that attracts a body towards the center of the earth. Gravity is the second of the two measurement components derived from the phone's accelerometer</td>
</tr>
<tr class="odd">
<td>Gyro</td>
<td>Measurement taken from gyroscope on the phone</td>
</tr>
<tr class="even">
<td>Jerk</td>
<td>Measurement of sudden movement, based on body acceleration with angular velocity</td>
</tr>
<tr class="odd">
<td>Mag</td>
<td>Indicates measure is of the magnitude of the three-dimensional signal indicated (e.g., timeBodyGyroJerk) calculated using the Euclidean norm</td>
</tr>
<tr class="even">
<td>Mean</td>
<td>Mean value estimated based on the signal indicated</td>
</tr>
<tr class="odd">
<td>MeanOf</td>
<td>indicates the mean of the measurement for each Participant+Actvity combination (note the mean of either the standard deviations or means of the initial measurements)</td>
</tr>
<tr class="even">
<td>Std</td>
<td>Standard deviation value estimated based on the signal indicated</td>
</tr>
<tr class="odd">
<td>Time</td>
<td>Time domain signals captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.</td>
</tr>
<tr class="even">
<td>XYZ</td>
<td>Used to denote 3-axial signals in the X, Y and Z directions</td>
</tr>
</tbody>
</table>

Variable Definitions
--------------------

<table>
<colgroup>
<col width="8%" />
<col width="12%" />
<col width="78%" />
</colgroup>
<thead>
<tr class="header">
<th>Position</th>
<th>Variable Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>subject</td>
<td>Numeric identifier (a unique sequential number) that indicates the participatn or subject of the experiment. The original research study included 30 participants, so this variable has a range of numeric values from 1 - 30. No further information behond an id number was provided by the original research team.</td>
</tr>
<tr class="even">
<td>2</td>
<td>activity</td>
<td>Character string describing one of six different activities that were performed by participants in the experiment, including: Laying, Sitting, Standing, Walking, Walking Downstairs, Walking Upstairs</td>
</tr>
<tr class="odd">
<td>3</td>
<td>meanOfTimeBodyAccMeanX</td>
<td>Numeric variable measuring the mean of the time domain body acceleration mean over the X dimention on the phone</td>
</tr>
<tr class="even">
<td>4</td>
<td>meanOfTimeBodyAccMeanY</td>
<td>Numeric variable measuring the mean of the time domain body acceleration mean over the Y dimention on the phone</td>
</tr>
<tr class="odd">
<td>5</td>
<td>meanOfTimeBodyAccMeanZ</td>
<td>Numeric variable measuring the mean of the time domain body acceleration mean over the Z dimention on the phone</td>
</tr>
<tr class="even">
<td>6</td>
<td>meanOfTimeBodyAccStdX</td>
<td>Numeric variable measuring the mean of the time domain body acceleration standard deviation over the X dimention on the phone</td>
</tr>
<tr class="odd">
<td>7</td>
<td>meanOfTimeBodyAccStdY</td>
<td>Numeric variable measuring the mean of the time domain body acceleration standard deviation over the Y dimention on the phone</td>
</tr>
<tr class="even">
<td>8</td>
<td>meanOfTimeBodyAccStdZ</td>
<td>Numeric variable measuring the mean of the time domain body acceleration standard deviation over the Z dimention on the phone</td>
</tr>
<tr class="odd">
<td>9</td>
<td>meanOfTimeGravityAccMeanX</td>
<td>Numeric variable measuring the mean of the time domain gravity acceleration mean over the X dimention on the phone</td>
</tr>
<tr class="even">
<td>10</td>
<td>meanOfTimeGravityAccMeanY</td>
<td>Numeric variable measuring the mean of the time domain gravity acceleration mean over the Y dimention on the phone</td>
</tr>
<tr class="odd">
<td>11</td>
<td>meanOfTimeGravityAccMeanZ</td>
<td>Numeric variable measuring the mean of the time domain gravity acceleration mean over the Z dimention on the phone</td>
</tr>
<tr class="even">
<td>12</td>
<td>meanOfTimeGravityAccStdX</td>
<td>Numeric variable measuring the mean of the time domain gravity acceleration standard deviation over the X dimention on the phone</td>
</tr>
<tr class="odd">
<td>13</td>
<td>meanOfTimeGravityAccStdY</td>
<td>Numeric variable measuring the mean of the time domain gravity acceleration standard deviation over the Y dimention on the phone</td>
</tr>
<tr class="even">
<td>14</td>
<td>meanOfTimeGravityAccStdZ</td>
<td>Numeric variable measuring the mean of the time domain gravity acceleration standard deviation over the Z dimention on the phone</td>
</tr>
<tr class="odd">
<td>15</td>
<td>meanOfTimeBodyAccJerkMeanX</td>
<td>Numeric variable measuring the mean of the time domain body acceleration jerk mean over the X dimention on the phone</td>
</tr>
<tr class="even">
<td>16</td>
<td>meanOfTimeBodyAccJerkMeanY</td>
<td>Numeric variable measuring the mean of the time domain body acceleration jerk mean over the Y dimention on the phone</td>
</tr>
<tr class="odd">
<td>17</td>
<td>meanOfTimeBodyAccJerkMeanZ</td>
<td>Numeric variable measuring the mean of the time domain body acceleration jerk mean over the Z dimention on the phone</td>
</tr>
<tr class="even">
<td>18</td>
<td>meanOfTimeBodyAccJerkStdX</td>
<td>Numeric variable measuring the mean of the time domain body acceleration jerk standard deviation over the X dimention on the phone</td>
</tr>
<tr class="odd">
<td>19</td>
<td>meanOfTimeBodyAccJerkStdY</td>
<td>Numeric variable measuring the mean of the time domain body acceleration jerk standard deviation over the Y dimention on the phone</td>
</tr>
<tr class="even">
<td>20</td>
<td>meanOfTimeBodyAccJerkStdZ</td>
<td>Numeric variable measuring the mean of the time domain body acceleration jerk standard deviation over the Z dimention on the phone</td>
</tr>
<tr class="odd">
<td>21</td>
<td>meanOfTimeBodyGyroMeanX</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement mean over the X dimention on the phone</td>
</tr>
<tr class="even">
<td>22</td>
<td>meanOfTimeBodyGyroMeanY</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement mean over the Y dimention on the phone</td>
</tr>
<tr class="odd">
<td>23</td>
<td>meanOfTimeBodyGyroMeanZ</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement mean over the Z dimention on the phone</td>
</tr>
<tr class="even">
<td>24</td>
<td>meanOfTimeBodyGyroStdX</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement standard deviation over the X dimention on the phone</td>
</tr>
<tr class="odd">
<td>25</td>
<td>meanOfTimeBodyGyroStdY</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement standard deviation over the Y dimention on the phone</td>
</tr>
<tr class="even">
<td>26</td>
<td>meanOfTimeBodyGyroStdZ</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement standard deviation over the Z dimention on the phone</td>
</tr>
<tr class="odd">
<td>27</td>
<td>meanOfTimeBodyGyroJerkMeanX</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement jerk mean over the X dimention on the phone</td>
</tr>
<tr class="even">
<td>28</td>
<td>meanOfTimeBodyGyroJerkMeanY</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement jerk mean over the Y dimention on the phone</td>
</tr>
<tr class="odd">
<td>29</td>
<td>meanOfTimeBodyGyroJerkMeanZ</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement jerk mean over the Z dimention on the phone</td>
</tr>
<tr class="even">
<td>30</td>
<td>meanOfTimeBodyGyroJerkStdX</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement jerk standard deviation over the X dimention on the phone</td>
</tr>
<tr class="odd">
<td>31</td>
<td>meanOfTimeBodyGyroJerkStdY</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement jerk standard deviation over the Y dimention on the phone</td>
</tr>
<tr class="even">
<td>32</td>
<td>meanOfTimeBodyGyroJerkStdZ</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement jerk standard deviation over the Z dimention on the phone</td>
</tr>
<tr class="odd">
<td>33</td>
<td>meanOfTimeBodyAccMagMean</td>
<td>Numeric variable measuring the mean of the time domain body acceleration magnitude mean</td>
</tr>
<tr class="even">
<td>34</td>
<td>meanOfTimeBodyAccMagStd</td>
<td>Numeric variable measuring the mean of the time domain body acceleration magnitude standard deviation</td>
</tr>
<tr class="odd">
<td>35</td>
<td>meanOfTimeGravityAccMagMean</td>
<td>Numeric variable measuring the mean of the time domain gravity acceleration magnitude mean</td>
</tr>
<tr class="even">
<td>36</td>
<td>meanOfTimeGravityAccMagStd</td>
<td>Numeric variable measuring the mean of the time domain gravity acceleration magnitude standard deviation</td>
</tr>
<tr class="odd">
<td>37</td>
<td>meanOfTimeBodyAccJerkMagMean</td>
<td>Numeric variable measuring the mean of the time domain body acceleration jerk magnitude mean</td>
</tr>
<tr class="even">
<td>38</td>
<td>meanOfTimeBodyAccJerkMagStd</td>
<td>Numeric variable measuring the mean of the time domain body acceleration jerk magnitude standard deviation</td>
</tr>
<tr class="odd">
<td>39</td>
<td>meanOfTimeBodyGyroMagMean</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement magnitude mean</td>
</tr>
<tr class="even">
<td>40</td>
<td>meanOfTimeBodyGyroMagStd</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement magnitude standard deviation</td>
</tr>
<tr class="odd">
<td>41</td>
<td>meanOfTimeBodyGyroJerkMagMean</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement jerk magnitude mean</td>
</tr>
<tr class="even">
<td>42</td>
<td>meanOfTimeBodyGyroJerkMagStd</td>
<td>Numeric variable measuring the mean of the time domain body gyroscope measurement jerk magnitude standard deviation</td>
</tr>
<tr class="odd">
<td>43</td>
<td>meanOfFrequencyBodyAccMeanX</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration mean over the X dimention on the phone</td>
</tr>
<tr class="even">
<td>44</td>
<td>meanOfFrequencyBodyAccMeanY</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration mean over the Y dimention on the phone</td>
</tr>
<tr class="odd">
<td>45</td>
<td>meanOfFrequencyBodyAccMeanZ</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration mean over the Z dimention on the phone</td>
</tr>
<tr class="even">
<td>46</td>
<td>meanOfFrequencyBodyAccStdX</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration standard deviation over the X dimention on the phone</td>
</tr>
<tr class="odd">
<td>47</td>
<td>meanOfFrequencyBodyAccStdY</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration standard deviation over the Y dimention on the phone</td>
</tr>
<tr class="even">
<td>48</td>
<td>meanOfFrequencyBodyAccStdZ</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration standard deviation over the Z dimention on the phone</td>
</tr>
<tr class="odd">
<td>49</td>
<td>meanOfFrequencyBodyAccJerkMeanX</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration jerk mean over the X dimention on the phone</td>
</tr>
<tr class="even">
<td>50</td>
<td>meanOfFrequencyBodyAccJerkMeanY</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration jerk mean over the Y dimention on the phone</td>
</tr>
<tr class="odd">
<td>51</td>
<td>meanOfFrequencyBodyAccJerkMeanZ</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration jerk mean over the Z dimention on the phone</td>
</tr>
<tr class="even">
<td>52</td>
<td>meanOfFrequencyBodyAccJerkStdX</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration jerk standard deviation over the X dimention on the phone</td>
</tr>
<tr class="odd">
<td>53</td>
<td>meanOfFrequencyBodyAccJerkStdY</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration jerk standard deviation over the Y dimention on the phone</td>
</tr>
<tr class="even">
<td>54</td>
<td>meanOfFrequencyBodyAccJerkStdZ</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration jerk standard deviation over the Z dimention on the phone</td>
</tr>
<tr class="odd">
<td>55</td>
<td>meanOfFrequencyBodyGyroMeanX</td>
<td>Numeric variable measuring the mean of the frequency domain body gyroscope measurement mean over the X dimention on the phone</td>
</tr>
<tr class="even">
<td>56</td>
<td>meanOfFrequencyBodyGyroMeanY</td>
<td>Numeric variable measuring the mean of the frequency domain body gyroscope measurement mean over the Y dimention on the phone</td>
</tr>
<tr class="odd">
<td>57</td>
<td>meanOfFrequencyBodyGyroMeanZ</td>
<td>Numeric variable measuring the mean of the frequency domain body gyroscope measurement mean over the Z dimention on the phone</td>
</tr>
<tr class="even">
<td>58</td>
<td>meanOfFrequencyBodyGyroStdX</td>
<td>Numeric variable measuring the mean of the frequency domain body gyroscope measurement standard deviation over the X dimention on the phone</td>
</tr>
<tr class="odd">
<td>59</td>
<td>meanOfFrequencyBodyGyroStdY</td>
<td>Numeric variable measuring the mean of the frequency domain body gyroscope measurement standard deviation over the Y dimention on the phone</td>
</tr>
<tr class="even">
<td>60</td>
<td>meanOfFrequencyBodyGyroStdZ</td>
<td>Numeric variable measuring the mean of the frequency domain body gyroscope measurement standard deviation over the Z dimention on the phone</td>
</tr>
<tr class="odd">
<td>61</td>
<td>meanOfFrequencyBodyAccMagMean</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration magnitude mean</td>
</tr>
<tr class="even">
<td>62</td>
<td>meanOfFrequencyBodyAccMagStd</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration magnitude standard deviation</td>
</tr>
<tr class="odd">
<td>63</td>
<td>meanOfFrequencyBodyAccJerkMagMean</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration jerk magnitude mean</td>
</tr>
<tr class="even">
<td>64</td>
<td>meanOfFrequencyBodyAccJerkMagStd</td>
<td>Numeric variable measuring the mean of the frequency domain body acceleration jerk magnitude standard deviation</td>
</tr>
<tr class="odd">
<td>65</td>
<td>meanOfFrequencyBodyGyroMagMean</td>
<td>Numeric variable measuring the mean of the frequency domain body gyroscope measurement magnitude mean</td>
</tr>
<tr class="even">
<td>66</td>
<td>meanOfFrequencyBodyGyroMagStd</td>
<td>Numeric variable measuring the mean of the frequency domain body gyroscope measurement magnitude standard deviation</td>
</tr>
<tr class="odd">
<td>67</td>
<td>meanOfFrequencyBodyGyroJerkMagMean</td>
<td>Numeric variable measuring the mean of the frequency domain body gyroscope measurement jerk magnitude mean</td>
</tr>
<tr class="even">
<td>68</td>
<td>meanOfFrequencyBodyGyroJerkMagStd</td>
<td>Numeric variable measuring the mean of the frequency domain body gyroscope measurement jerk magnitude standard deviation</td>
</tr>
</tbody>
</table>

Sourcing/Citations
------------------

Information in this data was sourced from the following:

\[Link to original study information/raw data.\] (<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>)

Human Activity Recognition Using Smartphones Dataset Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - Universit‡ degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. <activityrecognition@smartlab.ws> www.smartlab.ws

For more information about this dataset contact: <activityrecognition@smartlab.ws>

License:

Use of this dataset in publications must be acknowledged by referencing the following publication \[1\]

\[1\] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
