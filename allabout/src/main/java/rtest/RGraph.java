package rtest;

import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.stereotype.Service;
@Service
public class RGraph {
	public byte[] returnRImg1(String name) {
		RConnection r = null;
		byte retImg [] = null;
		try {
			r = new RConnection();		
			r.eval("jpeg('test.jpg')");
			r.eval("library(radarchart)");
			r.eval("library(fmsb)");
			r.eval("library(rCharts)");
			r.eval("library(DBI)");
			r.eval("library(RJDBC)");
			r.eval("library(plyr)");
			r.eval("library(knitr)");
			r.eval("library(reshape2)");
			r.eval("library(scales)");
			r.eval("drv <- JDBC('oracle.jdbc.driver.OracleDriver','c:/unico/ojdbc6.jar')");
			r.eval("conn <- dbConnect(drv, 'jdbc:oracle:thin:@localhost:1521:xe','allabout','allabout')");
			r.eval("result1 <- dbReadTable(conn,'COMPANY_ANAL')");
			r.eval("result1");
			r.eval("result2 <- sqldf('select DOMINANCE, INFLUENCE, STEADINESS, CONSCIENTIOUS from result1 where COM_NAME = "+name+"')");
			r.eval("result2");
			r.eval("DISC <- result2");
			r.eval("data <- DISC");
			r.eval("data=matrix(DISC, ncol=4)");
			r.eval("data<-as.data.frame(data)");
			r.eval("colnames(data)=c('D', 'I', 'S', 'C')");
			r.eval("data=rbind(rep(0.3,4) , rep(0,4) , data)");
			r.eval("data$D<-as.character(data$D)");
			r.eval("data$D<-as.numeric(data$D)");
			r.eval("data$I<-as.character(data$I)");
			r.eval("data$I<-as.numeric(data$I)");
			r.eval("data$S<-as.character(data$S)");
			r.eval("data$S<-as.numeric(data$S)");
			r.eval("data$C<-as.character(data$C)");
			r.eval("data$C<-as.numeric(data$C)");
			r.eval("radarchart(data)");
			r.eval("radarchart(data, axistype=1, pcol=rgb(0.1,0.5,0.5,0.5), pfcol=rgb(0.1,0.5,0.5,0.5), plwd=4, cglcol='grey', cglty=1, axislabcol='black', caxislabels=seq(0,,5), cglwd=2,vlcex=2)");
			r.eval("dev.off()");
			r.eval("r=readBin('test.jpg','raw',1024*1024)");
			r.eval("unlink('test.jpg')");
			retImg = r.eval("r").asBytes();
		} catch(Exception e) {
			System.out.println(e);	
			e.printStackTrace();
		} finally {
			r.close();
		}
		return retImg; 
	}
	public byte[] returnRImg2(String memId) {
		RConnection r = null;
		byte retImg [] = null;
		try {
			r = new RConnection();		
			r.eval("jpeg('test.jpg')");
			r.eval("library(radarchart)");
			r.eval("library(fmsb)");
			r.eval("library(rCharts)");
			r.eval("library(DBI)");
			r.eval("library(RJDBC)");
			r.eval("library(plyr)");
			r.eval("library(knitr)");
			r.eval("library(reshape2)");
			r.eval("library(scales)");
			r.eval("drv <- JDBC('oracle.jdbc.driver.OracleDriver','c:/unico/ojdbc6.jar')");
			r.eval("conn <- dbConnect(drv, 'jdbc:oracle:thin:@localhost:1521:xe','allabout','allabout')");
			r.eval("result1 <- dbReadTable(conn,'MEMBER_ANAL')");
			r.eval("result1");
			r.eval("result2 <- sqldf('select DOMINANCE, INFLUENCE, STEADINESS, CONSCIENTIOUS from result1 where MEM_ID = "+memId+"')");
			r.eval("result2");
			r.eval("DISC <- result2");
			r.eval("data <- DISC");
			r.eval("data=matrix(DISC, ncol=4)");
			r.eval("data<-as.data.frame(data)");
			r.eval("colnames(data)=c('D', 'I', 'S', 'C')");
			r.eval("data=rbind(rep(16,4) , rep(0,4) , data)");
			r.eval("data$D<-as.character(data$D)");
			r.eval("data$D<-as.numeric(data$D)");
			r.eval("data$I<-as.character(data$I)");
			r.eval("data$I<-as.numeric(data$I)");
			r.eval("data$S<-as.character(data$S)");
			r.eval("data$S<-as.numeric(data$S)");
			r.eval("data$C<-as.character(data$C)");
			r.eval("data$C<-as.numeric(data$C)");
			r.eval("radarchart(data)");
			r.eval("radarchart(data, axistype=1, pcol=rgb(0.1,0.5,0.5,0.5), pfcol=rgb(0.1,0.5,0.5,0.5), plwd=4, cglcol='grey', cglty=1, axislabcol='black', caxislabels=seq(0,,5), cglwd=2,vlcex=2)");
			r.eval("dev.off()");
			r.eval("r=readBin('test.jpg','raw',1024*1024)");
			r.eval("unlink('test.jpg')");
			retImg = r.eval("r").asBytes();
		} catch(Exception e) {
			System.out.println(e);	
			e.printStackTrace();
		} finally {
			r.close();
		}
		return retImg; 
	}
	
	
}
