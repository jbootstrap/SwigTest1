/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package swigtest1;

import java.io.File;
import java.util.HashSet;
import java.util.Set;
import swigtest1.generated.SwigClass;
import swigtest1.generated.swigdll;

/**
 *
 * @author root
 */
public class SwigTest1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
        String path = new File(".").getAbsoluteFile().getParent();
        System.out.println(path);
        //System.out.println("java.library.path="+System.getProperty("java.library.path"));
        //System.setProperty("java.library.path", "C:\\Users\\root\\Dropbox\\SwigTest1\\build\\classes\\win32-x86");
        //System.loadLibrary("swigdllJNI");
        //System.load("C:\\Users\\root\\Dropbox\\SwigTest1\\build\\classes\\win32-x86\\swigdllJNI.dll");
        SwigClass sc = new SwigClass();
        int x = sc.add2(11, 22);
        System.out.println(x);
        String y = sc.getString();
        System.out.println(y);
        //swigdll.setString("abc漢字");
        System.out.println(swigdll.getClassCount());
        sc.delete();
        sc = null;
        //for(int i=0; i<10000; i++) new SwigClass();
        System.out.println(swigdll.getClassCount());
        System.gc();
        System.out.println(swigdll.getClassCount());
    }
    
}