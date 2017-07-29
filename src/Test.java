import java.awt.Dimension;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JLabel;
import java.applet.Applet;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.CardLayout;
import java.awt.Checkbox;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Image;
import java.awt.LayoutManager;
import java.awt.Panel;
import java.awt.Scrollbar;
import java.awt.Toolkit;

import javax.swing.BorderFactory;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JApplet;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;






public class Test {

    private JFrame frame;
	
	JLabel lbwall,lbstd ; 
	JButton bthome,bteuser,btprev,btlast,std,btsubmit;
	JLabel lbphoto,lbprog,lbbranch,lbrank,lbsno,lbsfs,lbdetail,lbname,lbfname,lbmname,lbemail,lbcontact,lbdob,lbstatus,lbblood,lbgender,lbadd,lbpin,lbstate,lbcity,lbcat,lbphy,lbrel,
	        lboccup,lbincome,Col1,Col2,Col3,Col4,Col5,Row1,Row2,Row3,lbedu,lbdetail3,lb1,lb2,lb3,lb4,lb5,lb6,lb7,lb8;
	
	JButton btreset,btnext,btbrowse;
	JTextField txid,txsno,txname,txmname,txfname,txadd,txpin,txcont,txemail,txcity,txbranch,txrank,txsfs,txdetail,txcontact,txdob,txstatus,txblood,txstate,txcat,txoccup,txincome;
	;
	JTable table;
	JComboBox cbranch,cbrank,cbmm,cbyy,cbdd,cbstate,cbcat,cbblood,cbrel;
	JRadioButton rdmale,rdfemale,rdmarried,rdunmarried,rdbtech,rdmtech,rdmsc,rdsfs,rdtfws,rdy1,rdy2,rdy3,rdy4,rdy5,rdy6,rdy7,rdy8,
	                    rdn1,rdn2,rdn3,rdn4,rdn5,rdn6,rdn7,rdn8;
	JCheckBox   chphy,chex;
	ButtonGroup bggender,bgstatus,bgprog,bgsfs,bg1,bg2,bg3,bg4,bg5,bg6,bg7,bg8;
	//JFrame frame;
	JScrollPane jsp;
	String b[]= {"Select","ECE(B.Tech)","CSE(B.Tech)","EICE(B.Tech)","IT(B.Tech)","CE(B.Tech)","ME(B.Tech)","EE(B.Tech)","M.Sc","M.Tech"}; 
    String r[]={"JEE","REAP","DIRECT"};  
	String blood[] = {"Select","O negative","O positive","A negative","A positive","B negative","B positive","B positive","AB negative","	AB positive"};
	String rel[] = {"Select","Hindu","Muslim","Sikh","Christian","Jain","Budhism","Other"};		
			
			
			
			
		
    private LayoutManager BorderLayout;
	
	
	
	
	
	


    /**
     * Launch the application.
     */
    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    Test window = new Test();
                    window.frame.setVisible(true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /**
     * Create the application.
     */          
            
    public Test() {
        initialize();
    }

    /**
     * Initialize the contents of the frame.
     */
    private void initialize() {
        frame = new JFrame();
        frame.setBounds(100, 100, 450, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JPanel container = new JPanel();
        JScrollPane jsp = new JScrollPane(container);
        container.setPreferredSize(new Dimension(1360,1500));
        container.setLayout(null);

        
        Color color = new Color(238,242,243);
       container.setBackground(color);
        
    /*    JLabel lblHelloWorld = new JLabel("Hello World");
        lblHelloWorld.setBounds(10, 1200, 101, 14);
        lblHelloWorld.setIcon(new ImageIcon("home_logo.png"));
        container.add(lblHelloWorld);
	
        */
        
        
        
        lbwall=new JLabel();
      //  lbwall.setIcon(new ImageIcon("college1.jpg"));
     lbwall.setIcon(new javax.swing.ImageIcon(getClass().getResource("college1.jpg")));
        lbwall.setBounds(15,0,1335,175);
   
        
        
        
    bthome = new JButton ();
	bteuser = new JButton ();		
	btprev = new JButton ();
   
	//bthome.setIcon(new ImageIcon("home_logo.png"));
	 bthome.setIcon(new javax.swing.ImageIcon(getClass().getResource("home_logo.png")));
	    
	//bteuser.setIcon(new ImageIcon("buttonexist.png"));
	 bteuser.setIcon(new javax.swing.ImageIcon(getClass().getResource("buttonexist.png")));
		
	//btprev.setIcon(new ImageIcon("back-icon1 (1) - Copy.jpg"));
	 btprev.setIcon(new javax.swing.ImageIcon(getClass().getResource("back-icon1 (1) - Copy.jpg")));
		 
	 bthome.setBounds(550,185,70,40);
	 bteuser.setBounds(650,185,70,40);
	 btprev.setBounds(750,185,70,40);
	 
	 //	upper part and home button user panel etc
	
	   lbstd = new JLabel("New Student");
		lbstd.setBounds(635,250,120,25);
	 lbstd.setFont(new Font("Times New Roman",Font.BOLD,22));
	  
	
	//main panel phto and browse
	
	lbphoto=new JLabel();
	lbphoto.setOpaque(true);
	lbphoto.setBackground(Color.WHITE);
    lbphoto.setBounds(1150,335,150,150);
    
    btbrowse = new JButton("Browse");
    btbrowse.setBounds(1180,490,90,20);
    
    
                                           
    lbprog = new JLabel("Programme :-");                          //adding prograame 
    lbprog.setBounds(40,290,110,20);
    lbprog.setFont(new Font("Times New Roman",Font.BOLD,17));
	
     rdbtech=new JRadioButton("B.Tech");
	 rdmtech=new JRadioButton("M.Tech");
	 rdmsc=new JRadioButton("M.Sc.");
	 
	 rdbtech.setBounds(150,286,90,30);        //spacing btw radion button
	 rdmtech.setBounds(240,286,90,30);
	 rdmsc.setBounds(330,286,90,30);
	 
	
	 
	 bgprog=new ButtonGroup();
	 bgprog.add(rdbtech);
	 bgprog.add(rdmtech);
	 bgprog.add(rdmsc);
	                                         //60 spacing btw two column
    
	lbbranch = new JLabel("Branch :-");
	lbbranch.setBounds(660,290,110,20);
    lbbranch.setFont(new Font("Times New Roman",Font.BOLD,17));
    
    
    
    
    cbranch = new JComboBox(b);
    cbranch.setBounds(770,290,110,20);
    cbranch.setBackground(Color.WHITE);
	
    
    lbsno = new JLabel("Scholar No.  :- ");
	lbsno.setBounds(980,290,110,20);
    lbsno.setFont(new Font("Times New Roman",Font.BOLD,17));
    
    txsno = new JTextField(20);
	txsno.setBounds(1100,290,110,20);
    
    
    lbrank = new JLabel("Rank :-");                          //adding prograame  y axix spacing btw rows 20  
    lbrank.setBounds(40,330,110,20);
    lbrank.setFont(new Font("Times New Roman",Font.BOLD,17));
    
    cbrank = new JComboBox(r);
    cbrank.setBounds(150,330,110,20);
    cbrank.setBackground(Color.WHITE);
	
    txrank = new JTextField();
    txrank.setBounds(280,330,110,20);
    
    lbsfs = new JLabel("Under   :-");
    lbsfs.setBounds(660,330,90,30);
    lbsfs.setFont(new Font("Times New Roman",Font.BOLD,17));
    
    
     rdsfs = new JRadioButton("SFS");
     rdtfws = new JRadioButton("TFWS");
     rdsfs.setBounds(760,330,80,30);        //  no  spacing btw radion button
	 rdtfws.setBounds(840,330,90,30);
	 
	 
	 bgsfs=new ButtonGroup();
	 bgsfs.add(rdsfs);
	 bgsfs.add(rdtfws);
	 
	    lbdetail = new JLabel("1.Personal Detail");                        //spacing btw column 20
	    lbdetail.setBounds(40,380,200,40);
	    lbdetail.setFont(new Font("Times New Roman",Font.BOLD,20));
	     
	    lbname = new JLabel("Name  :-");                        //spacing btw column 20
	    lbname.setBounds(40,440,150,20);
	    lbname.setFont(new Font("Times New Roman",Font.BOLD,17));
	    
	    txname = new JTextField(50);                                                         //spacing btw column 20
	    txname.setBounds(210,440,250,20);
	    txname.setBackground(Color.WHITE);
	    txname.setFont(new Font("Times New Roman",Font.BOLD,17));
	    
	    lbfname = new JLabel("Father's Name :-");                                                         //spacing btw column 20
	    lbfname.setBounds(660,440,150,20);
	    lbfname.setFont(new Font("Times New Roman",Font.BOLD,17));
	    
	   
	    txfname = new JTextField(50);                                                         //spacing btw column 20
	    txfname.setBounds(810,440,250,20);
	    txfname.setBackground(Color.WHITE);
	    txfname.setFont(new Font("Times New Roman",Font.BOLD,17));
	   
	    lbmname = new JLabel("Mother's Name :-");                                                         //spacing btw column 20
	    lbmname.setBounds(40,480,150,20);
	    lbmname.setFont(new Font("Times New Roman",Font.BOLD,17));
	    
	   

	    txmname = new JTextField(50);                                                         //spacing btw column 20
	    txmname.setBounds(210,480,250,20);
	    txmname.setBackground(Color.WHITE);
	    txmname.setFont(new Font("Times New Roman",Font.BOLD,17));
	    
	    
	   
	    //now address and related thing   right side of page
	    
	    lbadd = new JLabel("Address :-");                                                         //spacing btw column 20
	    lbadd.setBounds(660,480,150,20);
	    lbadd.setFont(new Font("Times New Roman",Font.BOLD,17));
	 
	    
	    
	    txadd=new JTextField();
		txadd.setBorder(BorderFactory.createLineBorder(Color.BLACK));
		txadd.setBounds(810,480,250,40);
		  
		    
	   
	    lbpin = new JLabel("Pin Code :-");
	    lbpin.setBounds(660,540,150,20);
	    lbpin.setFont(new Font("Times New Roman",Font.BOLD,17));
	 
	    
	    
	    txpin =new JTextField(10);
		txpin.setBounds(810,540,250,20);
	
	    lbcity = new JLabel("City :-");
	    lbcity.setBounds(660,580,150,20);
	    lbcity.setFont(new Font("Times New Roman",Font.BOLD,17));
	 
	    txcity=new JTextField(10);
		txcity.setBounds(810,580,250,20);
	
	    lbstate = new JLabel("State :-");
	    lbstate.setBounds(660,620,150,20);
	    lbstate.setFont(new Font("Times New Roman",Font.BOLD,17));
		
		 
		 
		 
		 cbstate=new JComboBox();
		 cbstate.setBounds(810,620,250,20);
		 cbstate.setBackground(Color.WHITE);
			   		
		 
		 cbstate.addItem("Select");
		 cbstate.addItem("Andhra Pradesh");
		 cbstate.addItem("Arunachal Pradesh");
		 cbstate.addItem("Assam");
		 cbstate.addItem("Bihar	");
		 cbstate.addItem("Chhattisgarh");
		 cbstate.addItem("Goa");
		 cbstate.addItem("Gujarat");
		 cbstate.addItem("Haryana");
		 cbstate.addItem("Himachal Pradesh");
		 cbstate.addItem("Jammu and Kashmir");
		 cbstate.addItem("Jharkhand");
		 cbstate.addItem("Karnataka");
		 cbstate.addItem("Kerala");
		 cbstate.addItem("Madhya Pradesh");
		 cbstate.addItem("Maharashtra");
		 cbstate.addItem("Manipur");
		 cbstate.addItem("Meghalaya");
		 cbstate.addItem("Mizoram");
		 cbstate.addItem("Nagaland");
		 cbstate.addItem("Odisha");
		 cbstate.addItem("Punjab");
		 cbstate.addItem("Rajasthan");
		 cbstate.addItem("Sikkim");
		 cbstate.addItem("Tamil Nadu");
		 cbstate.addItem("Telangana	");
		 cbstate.addItem("Tripura");
		 cbstate.addItem("Uttar Pradesh");
		 cbstate.addItem("Uttarakhand");
		 cbstate.addItem("West Bengal");

     
		 
		 
		 
		  //left side of page   date of birth
		 
		 
		  lbdob = new JLabel("Date Of Birth :-");
		    lbdob.setBounds(40,540,150,20);
		    lbdob.setFont(new Font("Times New Roman",Font.BOLD,17));
			 	    
		 
		 cbyy=new JComboBox();
		 cbyy.setBackground(Color.WHITE);
			
		 cbyy.addItem("Year");
		 
		 for(int i=1980;i<2020;i++)
		     {
		    	 cbyy.addItem(Integer.toString(i));
		     }
			
			 
		 
		 
		 
		     cbmm=new JComboBox();
		     cbmm.setBackground(Color.WHITE);
		 	
		     cbmm.addItem("Month");
		     
			 for(int i=1;i<13;i++)
		     {
		    	 cbmm.addItem(Integer.toString(i));
		     }
			 
		
			 
			 cbdd=new JComboBox();
			 cbdd.setBackground(Color.WHITE);
				
			 cbdd.addItem("Date");
			 
			 
			 for(int i=1;i<32;i++)
		     {
		    	 cbdd.addItem(Integer.toString(i));
		     }
			
		
			 cbdd.setBounds(210,540,73,20);
			 cbyy.setBounds(293,540,73,20);
			 cbmm.setBounds(376,540,74,20);
			 
			 
			 
			 
			  lbcontact = new JLabel("Contacts :-");
			    lbcontact.setBounds(40,580,150,20);
			    lbcontact.setFont(new Font("Times New Roman",Font.BOLD,17));
			  
			 txcontact =new JTextField(10);
			 txcontact.setBounds(210,580,250,20);
			 
			 
			
			  lbemail = new JLabel("E-Mail :-");
			    lbemail.setBounds(40,620,150,20);
			    lbemail.setFont(new Font("Times New Roman",Font.BOLD,17));
			  
			 
			 txemail =new JTextField(10);
			 txemail.setBounds(210,620,250,20);
					
			 lbstatus = new JLabel("Marital Status :-");
			    lbstatus.setBounds(40,660,150,20);
			    lbstatus.setFont(new Font("Times New Roman",Font.BOLD,17));
			  
			    rdmarried =new JRadioButton("Married");
			    rdunmarried = new JRadioButton("Unmarried");
		          bgstatus = new ButtonGroup();
		          bgstatus.add(rdmarried);
		          bgstatus.add(rdunmarried);

		          rdmarried.setBounds(190,660,150,20);
			      rdunmarried.setBounds(340,660,150,20);
			            
			      lbblood = new JLabel("Blood Group :-");
				    lbblood.setBounds(660,660,150,20);
				    lbblood.setFont(new Font("Times New Roman",Font.BOLD,17));
					
					 
					 
					 
					 cbblood=new JComboBox(blood);
					 cbblood.setBounds(810,660,250,20);
					 cbblood.setBackground(Color.WHITE);
						
			        
					 lbcat = new JLabel("Category :-");
					    lbcat.setBounds(40,700,150,20);
					    lbcat.setFont(new Font("Times New Roman",Font.BOLD,17));
					  
					    txcat =new JTextField();
					    txcat.setBounds(210,700,250,20);
					      
					
		    lbgender = new JLabel("Gender :-");
		    lbgender.setBounds(660,700,150,20);
		    lbgender.setFont(new Font("Times New Roman",Font.BOLD,17));
		    
		    rdmale =new JRadioButton("Male");
		       rdmale.setBounds(810,700,150,20);
			rdfemale = new JRadioButton("Female");
			 rdfemale.setBounds(960,700,150,20);
			   	
		    
		    
		    bggender = new ButtonGroup();
	          bggender.add(rdmale);
	          bggender.add(rdfemale);
	  
	          
	      lbphy = new JLabel ("If Std. Belongs to:-") ;   
	      lbphy.setBounds(40,740,160,20);
		    lbphy.setFont(new Font("Times New Roman",Font.BOLD,17));
		      
		  chphy  = new JCheckBox("P.H");    
		  chex = new JCheckBox("EX Serviceman");
		  chphy.setBounds(200,740,100,20);
		  chex.setBounds(320,740,150,20);
		    
		  
		  
		    lbrel = new JLabel("Religion");
		    lbrel.setFont(new Font("Times New Roman",Font.BOLD,17));
			lbrel.setBounds(660,740,150,20);

			cbrel = new JComboBox(rel);
			  cbrel.setBounds(810,740,150,22);
			  cbrel.setBackground(Color.WHITE);
						
			
			lboccup = new JLabel ("Parent's Occupation :-") ;   
            lboccup.setBounds(40,780,170,20);
		    lboccup.setFont(new Font("Times New Roman",Font.BOLD,17));
				      
	    	  txoccup  = new JTextField();    
			txoccup.setBounds(210,780,250,20);	
			  
			lbincome =  new JLabel("Parent's Income");
	    lbincome.setBounds(660,780,150,20);
	    lbincome.setFont(new Font("Times New Roman",Font.BOLD,17));
	
	    txincome = new JTextField();
		 txincome.setBounds(810,780,250,22);
		
		
		 
		 //Education Details
		 
		 lbedu = new JLabel("2.Educational Qualification");                        //spacing btw column 20
		    lbedu.setBounds(40,850,250,40);
		    lbedu.setFont(new Font("Times New Roman",Font.BOLD,20));
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 //creating table 
		 
		  Col1= new JLabel("Examination");
		  Col2= new JLabel("Subject");
		  Col3= new JLabel("Board/University");
		  Col4= new JLabel("Year of Passing");
		  Col5= new JLabel("% Marks / CGPA");
		 
		  Col1.setBounds(40,900,250,40);
		  Col1.setFont(new Font("Times New Roman",Font.BOLD,20));
			 	 
		  Col2.setBounds(290,900,250,40);
		  Col2.setFont(new Font("Times New Roman",Font.BOLD,20));
		
		  Col3.setBounds(540,900,250,40);
		  Col3.setFont(new Font("Times New Roman",Font.BOLD,20));
		  Col4.setBounds(790,900,250,40);
		  Col4.setFont(new Font("Times New Roman",Font.BOLD,20));
		  Col5.setBounds(1040,900,250,40);
		  Col5.setFont(new Font("Times New Roman",Font.BOLD,20));
		
		 

		  Row1= new JLabel("10th Matriculation");
		  Row2= new JLabel("10+2/Equivalent");
		  Row3= new JLabel("Detail of UG Degree");
		
		  Row1.setBounds(40,950,250,40);
		  Row1.setFont(new Font("Times New Roman",Font.BOLD,20));
			 	 
		  Row2.setBounds(40,990,250,40);
		  Row2.setFont(new Font("Times New Roman",Font.BOLD,20));
		
		  Row3.setBounds(40,1030,250,40);
		  Row3.setFont(new Font("Times New Roman",Font.BOLD,20));
		
		  
		  
		  
		 
	String[][] cellData = {{"","","",""},{"","","",""},
				    { "","","",""}};
				String[] columnNames = { "Subject","Board/University","Year Of Passing","%Marks/CGPA"};

				 table = new JTable(cellData, columnNames);
				 table.setBounds(250,950,1000,120);
				 table.setRowHeight(40);                                 //setting row hight
				 table.setRowHeight(1, 40);	
				 
		
				 
				//list of enclosure   
				 
				 lbdetail3 = new JLabel("3.List Of Enclosures(Attested Photocopy)");                        //spacing btw column 20
				    lbdetail3.setBounds(40,1110,400,40);
				    lbdetail3.setFont(new Font("Times New Roman",Font.BOLD,20));

				    
				    
				    
				    
					 lb1 = new JLabel("D.O.B Certificate :-");
					 lb2 = new JLabel("Diploma/B.Tech Marksheet :-");
					 lb3 = new JLabel("10th Marksheet :-");
					 lb4 = new JLabel("PH /Ex_S Cat. Certificate :-");
					 lb5 = new JLabel("12th Marksheet :-");
					 lb6 = new JLabel("Migration/T.C :-");
					 lb7 = new JLabel("Caste Certificate :-");
					 lb8 = new JLabel("Other(if any) :-");
					    
					 
					 
					 lb1.setFont(new Font("Times New Roman",Font.BOLD,17));
					 lb2.setFont(new Font("Times New Roman",Font.BOLD,17));
					 lb3.setFont(new Font("Times New Roman",Font.BOLD,17));
					 lb4.setFont(new Font("Times New Roman",Font.BOLD,17));
					 lb5.setFont(new Font("Times New Roman",Font.BOLD,17));
					 lb6.setFont(new Font("Times New Roman",Font.BOLD,17));
					 lb7.setFont(new Font("Times New Roman",Font.BOLD,17));
					 lb8.setFont(new Font("Times New Roman",Font.BOLD,17));
					  
					 rdy1 =new JRadioButton("Yes");
					 rdn1 = new JRadioButton("No");
				     bg1 = new ButtonGroup();
				     bg1.add(rdy1);
				     bg1.add(rdn1);
	    
				    
				     rdy2 =new JRadioButton("Yes");
					 rdn2 = new JRadioButton("No");
				     bg2= new ButtonGroup();
				     bg2.add(rdy2);
				     bg2.add(rdn2);
	    
				     rdy3 =new JRadioButton("Yes");
					 rdn3 = new JRadioButton("No");
				     bg3 = new ButtonGroup();
				     bg3.add(rdy3);
				     bg3.add(rdn3);
	    
				     rdy4 =new JRadioButton("Yes");
					 rdn4 = new JRadioButton("No");
				     bg4 = new ButtonGroup();
				     bg4.add(rdy4);
				     bg4.add(rdn4);
	    
				     rdy5 =new JRadioButton("Yes");
					 rdn5 = new JRadioButton("No");
				     bg5= new ButtonGroup();
				     bg5.add(rdy5);
				     bg5.add(rdn5);
	    
				 
				     rdy6 =new JRadioButton("Yes");
					 rdn6 = new JRadioButton("No");
				     bg6= new ButtonGroup();
				     bg6.add(rdy6);
				     bg1.add(rdn6);
	    		 
				 
				     rdy7 =new JRadioButton("Yes");
					 rdn7 = new JRadioButton("No");
				     bg7 = new ButtonGroup();
				     bg7.add(rdy7);
				     bg7.add(rdn7);
	    		 
				 
				     rdy8 =new JRadioButton("Yes");
					 rdn8 = new JRadioButton("No");
				     bg8= new ButtonGroup();
				     bg8.add(rdy8);
				     bg8.add(rdn8);
	
				     
					 
					 lb1.setBounds(40,1200,200,20);
					 lb2.setBounds(660,1200,250,20);
					 lb3.setBounds(40,1240,200,20);
					 lb4.setBounds(660,1240,250,20);
					 lb5.setBounds(40,1280,200,20);
					 lb6.setBounds(660,1280,250,20);
					 lb7.setBounds(40,1320,200,20);
					 lb8.setBounds(660,1320,250,20);
	
				     
				     
				     
				     rdy1.setBounds(240,1200,150,20);
					 rdn1.setBounds(390,1200,150,20);
					 
					 rdy2.setBounds(910,1200,150,20);
					 rdn2.setBounds(1060,1200,150,20);
					 	     
					 rdy3.setBounds(240,1240,150,20);
					 rdn3.setBounds(390,1240,150,20);
					 
					 rdy4.setBounds(910,1240,150,20);
					 rdn4.setBounds(1060,1240,150,20);
					 
					 rdy5.setBounds(240,1280,150,20);
					 rdn5.setBounds(390,1280,150,20);
					 
					 rdy6.setBounds(910,1280,150,20);
					 rdn6.setBounds(1060,1280,150,20);
					 
					 rdy7.setBounds(240,1320,150,20);
					 rdn7.setBounds(390,1320,150,20);
					 
					 rdy8.setBounds(910,1320,150,20);
					 rdn8.setBounds(1060,1320,150,20);
					 
		           	btsubmit = new JButton("Submit");		 
					btsubmit.setBounds(600,1400,100,30); 
					 
					 
					 
					 
	//setLayout(null);
    container.add(lbwall);
    container.add(bthome);
    container.add(bteuser);
    container.add(btprev);    
    container.add(lbstd);
    container.add(lbphoto);
    container.add(btbrowse);
    container.add(lbprog);
    container.add(rdbtech);
    container.add(rdmtech);
    container.add(rdmsc);
   // container.add(bgprog);
    container.add(lbbranch);
    container.add(cbranch);
    container.add(lbsno);
    container.add(txsno);
    container.add(lbrank);
    container.add(cbrank);
    container.add(txrank);
    container.add(lbsfs);
    container.	add(rdsfs);
    container.add(rdtfws);
 //   container.	add(bgsfs);
    container.	add(lbdetail);
    container.add(lbname);
    container.	add(txname);
    container.add(lbfname);
    container.add(txfname);
	container.add(lbmname);
	container.add(txmname);
	 //address to be added
	
	
	container.add(lbadd);
	container.add(txadd);
	container.add(lbdob);
	container.add(cbdd);
	container.add(cbmm);
	container.add(cbyy);
	container.add(lbpin);
	container.add(txpin);
	container.add(lbcity);
	container.add(txcity);
	container.add(lbstate);
	container.add(cbstate);
	container.	add(lbcontact);
	container.	add(txcontact);
container.add(lbemail);
	container.add(txemail);
	container.add(lbstatus);
	container.add(rdmarried);
	container.add(rdunmarried);
	
	container.add(lbblood);
	container.add(cbblood);
	
	container.add(lbcat);
	container.add(txcat);
	container.add(lbgender);
	container.add(rdmale);
	container.add(rdfemale);
	
	container.add(lbphy);
	container.add(chphy);
	container.add(chex);
	container.add(lbrel);
	container.add(cbrel);
	container.add(lbincome);
	container.add(txincome);

	container.add(lboccup);
	container.add(txoccup);

	container.add(lbedu);

	container.add(Col1);
	container.add(Col2);
	container.add(Col3);
	container.add(Col4);
	container.add(Col5);
	container.add(Row1);
	container.add(Row2);
	container.add(Row3);
	
	container.add(table);
	container.add(lbdetail3);
		
	container.add(lb1);
	container.add(rdy1);
	container.add(rdn1);
	
	container.add(lb2);
	container.add(rdy2);
	container.add(rdn2);
		
	container.add(lb3);
	container.add(rdy3);
	container.add(rdn3);
	
	container.add(lb4);
	container.add(rdy4);
	container.add(rdn4);
	
	container.add(lb5);
	container.add(rdy5);
	container.add(rdn5);
		
	container.add(lb6);
	container.add(rdy6);
	container.add(rdn6);
	
    
	container.add(lb7);
	container.add(rdy7);
	container.add(rdn7);
	
	container.add(lb8);
	container.add(rdy8);
	container.add(rdn8);
	
	container.add(btsubmit);
	
	//container.setBackground(Color.getColor(color));
	
	
	
	
	
	
	
	frame.getContentPane().add(jsp);
		
		
		
		
		
		
		
		
		
		
    }
}// Java Document