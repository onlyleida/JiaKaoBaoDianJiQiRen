package com.blankj.utilcode.util;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    static class a implements FileFilter {
        a() {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return file.isFile();
        }
    }

    static {
        System.getProperty("line.separator");
    }

    public static boolean a(File file) {
        if (file == null) {
            return false;
        }
        if (!file.exists()) {
            return true;
        }
        if (!file.isDirectory()) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    if (!file2.delete()) {
                        return false;
                    }
                } else if (file2.isDirectory() && !a(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static boolean b(File file) {
        return c(file, new a());
    }

    public static boolean c(File file, FileFilter fileFilter) {
        if (file == null) {
            return false;
        }
        if (!file.exists()) {
            return true;
        }
        if (!file.isDirectory()) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                if (fileFilter.accept(file2)) {
                    if (file2.isFile()) {
                        if (!file2.delete()) {
                            return false;
                        }
                    } else if (file2.isDirectory() && !a(file2)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
