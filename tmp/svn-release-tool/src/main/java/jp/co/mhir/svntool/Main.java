package jp.co.mhir.svntool;

import org.tmatesoft.svn.core.SVNException;

public class Main {
    static final String BASE_URL="http://192.168.220.146/svn/repo1/";
    static final String BRANCHES_FOLDER="branches/";
    static final String RELEASE_FOLDER="target/";


    public static void main(String[] args) throws SVNException {
        SvnTool svnTool = new SvnTool();

        // get branch name from user input
        String branchName = svnTool.getInputBranch();

        // get commit message from user input
        String commitMessage = svnTool.getCommitMessage();

        // final release url by commit message
        String targetUrl=BASE_URL+RELEASE_FOLDER+""+commitMessage;

        // do svn copy from branch to release

        // make release doc file

        // close
    }
}
