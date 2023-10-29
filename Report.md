# Data Manipulation Details
## summary statistics
- Import libraries and the dataset

      import pandas as pd
      import matplotlib.pyplot as plt
      df=pd.read_csv("./sample_data/california_housing_train.csv")
  
- Check and assert that the data set is sucessfully loaded

      assert df.shape==(17000,9)
      assert df.shape[0]==17000
  
- describe dataset

  The data_summary function provides a concise summary of the dataset, displaying statistics like mean, median, standard deviation, and more.

      print(df.describe())

<img width="957" alt="Screen Shot 2023-09-10 at 4 32 27 PM" src="https://github.com/vivianzzzzz/Template/assets/143654445/06d52b1e-a3dc-40a1-93da-df117020dfc4">

- Lowest 3 house price in the dataset

  Perform sorting in ascending order and get the first 3 rows to obtain lowest 3 house prices

      sorted_by_value=df.sort_values('median_house_value', ascending = True)[:3]
      sorted_by_value

<img width="992" alt="Screen Shot 2023-09-10 at 4 32 51 PM" src="https://github.com/vivianzzzzz/Template/assets/143654445/2d970c0f-5c5d-442c-add0-f7cb9c15bff2">

- Calculate the median/mean/standard deviation for the 2022 numbers

      median=df['median_house_value'].dropna().median()
      mean=df['median_house_value'].dropna().mean()
      sd=df['median_house_value'].dropna().std()
      print("Bottom 3 house price: "+str(sorted_by_value))
      print("median is: "+ str(median))
      print("mean is: "+str(mean))
      print("standard deviation is: "+str(sd))

<img width="386" alt="Screen Shot 2023-09-10 at 4 32 58 PM" src="https://github.com/vivianzzzzz/Template/assets/143654445/40ac3bda-1895-478c-9852-ac37f8ce980d">

## visualization
- Plot a histogram for the house value
  
  Visualizing data helps in understanding patterns and outliers. The function creates a boxplot showing the distribution of house prices from the dataset.

      data = df['median_house_value'].dropna()
      plt.hist(data, bins=5, edgecolor="k")
      plt.xlabel('median_house_value')
      plt.ylabel('Frequency')
      plt.title('Histogram of median house price')
      plt.show()



![Figure_1](https://github.com/vivianzzzzz/Template/assets/143654445/2f7379f0-1342-4bee-bc6b-c4943bea475b)
