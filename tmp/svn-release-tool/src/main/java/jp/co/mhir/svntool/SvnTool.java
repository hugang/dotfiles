package jp.co.mhir.svntool;

import org.tmatesoft.svn.core.SVNDirEntry;
import org.tmatesoft.svn.core.SVNException;
import org.tmatesoft.svn.core.SVNNodeKind;
import org.tmatesoft.svn.core.SVNURL;
import org.tmatesoft.svn.core.auth.ISVNAuthenticationManager;
import org.tmatesoft.svn.core.internal.io.dav.DAVRepositoryFactory;
import org.tmatesoft.svn.core.internal.io.fs.FSRepositoryFactory;
import org.tmatesoft.svn.core.internal.io.svn.SVNRepositoryFactoryImpl;
import org.tmatesoft.svn.core.io.SVNRepository;
import org.tmatesoft.svn.core.io.SVNRepositoryFactory;
import org.tmatesoft.svn.core.wc.SVNWCUtil;

import java.util.Collection;
import java.util.Iterator;

public class SvnTool {
    static SVNRepository repository;

    public String getInputBranch() throws SVNException {
        if (repository==null){
            initRepository();
        }

        // print branches
        listEntries(repository,"branches");
        // get user input

        // return user input
        return "";
    }

    private void initRepository() throws SVNException {
        repository = SVNRepositoryFactory.create(SVNURL.parseURIEncoded(Main.BASE_URL));
        ISVNAuthenticationManager authManager = SVNWCUtil.createDefaultAuthenticationManager("user001", "user001".toCharArray());
        repository.setAuthenticationManager(authManager);
    }

    public String getCommitMessage() {
        return "";
    }

    public static void main(String[] args) throws SVNException {

        setupLibrary();
        //repository.testConnection();
        listEntries(repository,"trunk");
    }

    private static void setupLibrary() {
        DAVRepositoryFactory.setup();
        SVNRepositoryFactoryImpl.setup();
        FSRepositoryFactory.setup();
    }

    public static void listEntries(SVNRepository repository, String path) throws SVNException {
        Collection entries = repository.getDir(path, -1, null,
                (Collection) null);
        Iterator iterator = entries.iterator();
        while (iterator.hasNext()) {
            SVNDirEntry entry = (SVNDirEntry) iterator.next();
            System.out.println("/" + (path.equals("") ? "" : path + "/")
                    + entry.getName() + " (author: '" + entry.getAuthor()
                    + "'; revision: " + entry.getRevision() + "; date: " + entry.getDate() + ")");
            /*
             * Checking up if the entry is a directory.
             */
            if (entry.getKind() == SVNNodeKind.DIR) {
                listEntries(repository, (path.equals("")) ? entry.getName()
                        : path + "/" + entry.getName());
            }
        }
    }
}
