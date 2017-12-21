package rtest;

import org.rosuda.REngine.RList;
import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.stereotype.Service;
@Service
public class RChart {
	public String returnRChart1(String name)  {
		RConnection r = null;
		String retStr = "";
		try {
			r = new RConnection();
			r.eval("library(rCharts)");
			r.eval("library(plyr)");
			r.eval("library(knitr)");
			r.eval("library(reshape2)");
			r.eval("library(scales)");
			r.eval("library(DBI)");
			r.eval("library(RJDBC)");
			r.eval("library(sqldf)");
			r.eval("library(ggplot2)");
			r.eval("require(reshape2)");
     		r.eval("drv <- JDBC('oracle.jdbc.driver.OracleDriver','c:/unico/ojdbc6.jar')");
			r.eval("conn <- dbConnect(drv, 'jdbc:oracle:thin:@localhost:1521:xe','allabout','allabout')");
			r.eval("result1 <- dbReadTable(conn,'COMPANY_INCOME')");
			r.eval("result1");
	    	r.eval("result2 <- sqldf('select INCOME14, INCOME15, INCOME16, PROFIT14, PROFIT15, PROFIT16 from result1 where COM_NAME like "+name+"')");
			r.eval("result2");
	    	r.eval("result3<-matrix(result2,ncol = 2)");
			r.eval("result3<-as.data.frame(result3)");
			r.eval("colnames(result3)<-c('Income','Profit')");
			r.eval("result3");
			r.eval("year<-c('2014','2015','2016')");
			r.eval("year<-as.matrix(year)");
			r.eval("colnames(year)<-c('year')");
			r.eval("year");
			r.eval("df <- data.frame(year, result3)");
			r.eval("df$Income<-as.numeric(df$Income)");
			r.eval("df$Profit<-as.numeric(df$Profit)");
			r.eval("gg <- mPlot(x = 'year', y = c('Income','Profit'), data = df, type = 'Line', pointSize = 10, lineWidth = 5)");
			r.eval("out<- capture.output(gg$show('inline'));");
			r.eval("str  <- ''");
			r.eval(" for(i in 1:length(out)){ str<-paste(str, out[i], '\n'); }");
			return r.eval("str").asString();
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		} finally {
			r.close();
		}
		return retStr;
	}
	public String returnRChart2(String name)  {
		RConnection r = null;
		String retStr = "";
		try {
			r = new RConnection();
			r.eval("library(rCharts)");
			r.eval("library(DBI)");
			r.eval("library(RJDBC)");
			r.eval("library(plyr)");
			r.eval("library(knitr)");
			r.eval("library(reshape2)");
			r.eval("library(scales)");
			r.eval("options(RCHART_WIDTH = 600, RCHART_HEIGHT = 400)");
			r.eval("knitr::opts_chunk$set(comment = NA, results = 'asis', tidy = F, message = F)");
			r.eval("drv<-JDBC('oracle.jdbc.driver.OracleDriver','c:/unico/ojdbc6.jar')");
			r.eval("conn <-dbConnect(drv,'jdbc:oracle:thin:@localhost:1521:xe','allabout','allabout')");
			r.eval("num1<- dbGetQuery(conn,'SELECT MALE_NUM,FEMALE_NUM FROM COMPANY_EMPLOYEE WHERE COM_NAME= "+name+"')"); 
			//r.eval("num1<- dbGetQuery(conn,'SELECT MALE_NUM,FEMALE_NUM FROM COMPANY_EMPLOYEE')"); 
			r.eval("x<-data.frame(key = c('male', 'female'), value = c(num1$MALE_NUM, num1$FEMALE_NUM))");
			r.eval("result5 <- hPlot(x = 'key', y = 'value', data = x, type = 'pie')");
			r.eval("rrr <- paste('<div id=',result5$params$dom, ' class=\"rChart highcharts\"></div>', result5$html())");
			return r.eval("rrr").asString();  
			/*RList list = r.eval("num1").asList();
			int cols = list.size();
			int rows = list.at(0).length();
			String[][]s = new String[cols][];
			for(int i=0; i<cols; i++) {
				s[i] = list.at(i).asStrings();				
			}
			for(int j=0; j<rows; j++) {
				for(int i=0; i<cols; i++) {
					retStr += (s[i][j])+"";
				}
				retStr += "</br>";
			}					
 */
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		} finally {
			r.close();
		}
		return retStr;
	}
	public String returnRChart3(String name)  {
		RConnection r = null;
		String retStr = "";
		try {
			r = new RConnection();
			r.eval("library(rCharts)");
			r.eval("library(plyr)");
			r.eval("library(knitr)");
			r.eval("library(reshape2)");
			r.eval("library(scales)");
			r.eval("library(DBI)");
			r.eval("library(RJDBC)");
			r.eval("library(sqldf)");
			r.eval("library(ggplot2)");
			r.eval("require(reshape2)");
     		r.eval("drv <- JDBC('oracle.jdbc.driver.OracleDriver','c:/unico/ojdbc6.jar')");
			r.eval("conn <- dbConnect(drv, 'jdbc:oracle:thin:@localhost:1521:xe','allabout','allabout')");
			r.eval("result1 <- dbReadTable(conn,'COMPANY_EMPLOYEE')");
			r.eval("result1");
	    	r.eval("result2 <- sqldf('select MALE_REGULAR, MALE_TEMPORARY, FEMALE_REGULAR, FEMALE_TEMPORARY from result1 where COM_NAME like "+name+"')");
			r.eval("result2");
	    	r.eval("df<-data.frame()");
			r.eval("head(result2)");
			r.eval("result3 <- as.data.frame(result2)");
			r.eval("result3");
			r.eval("df<-data.frame()");
			r.eval("i <- c('regular','temporary','regular','temporary')");
			r.eval("ii <- c('male','male','female','female')");
			r.eval("iii <- c(result3$MALE_REGULAR, result3$MALE_TEMPORARY,result3$FEMALE_REGULAR,result3$FEMALE_TEMPORARY)");
			r.eval("df <- data.frame(emp=i, gender=ii, freq=iii)");
			r.eval("df");
			r.eval("gg <- nPlot(freq ~ emp, group = 'gender', data = df, type = 'multiBarChart')");
			r.eval("out<- capture.output(gg$show('inline'));");
			r.eval("str  <- ''");
			r.eval(" for(i in 1:length(out)){ str<-paste(str, out[i], '\n'); }");
			return r.eval("str").asString();
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		} finally {
			r.close();
		}
		return retStr;
	}

}
