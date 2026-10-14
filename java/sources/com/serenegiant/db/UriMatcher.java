package com.serenegiant.db;

import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
public class UriMatcher {
    private static final int EXACT = 0;
    public static final int NO_MATCH = -1;
    private static final int NUMBER = 1;
    static final Pattern PATH_SPLIT_PATTERN = Pattern.compile("/");
    private static final int TEXT = 2;
    private final ArrayList<UriMatcher> mChildren;
    private int mCode;
    private String mText;
    private int mWhich;

    public UriMatcher(int i) {
        this.mCode = i;
        this.mWhich = -1;
        this.mChildren = new ArrayList<>();
        this.mText = null;
    }

    public void addURI(String str, String str2, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("code " + i + " is invalid: it must be positive");
        }
        String[] strArrSplit = null;
        if (str2 != null) {
            if (str2.length() > 0 && str2.charAt(0) == '/') {
                str2 = str2.substring(1);
            }
            strArrSplit = PATH_SPLIT_PATTERN.split(str2);
        }
        int length = strArrSplit != null ? strArrSplit.length : 0;
        int i2 = -1;
        UriMatcher uriMatcher = this;
        while (i2 < length) {
            String str3 = i2 < 0 ? str : strArrSplit[i2];
            ArrayList<UriMatcher> arrayList = uriMatcher.mChildren;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                UriMatcher uriMatcher2 = arrayList.get(i3);
                if (str3.equals(uriMatcher2.mText)) {
                    uriMatcher = uriMatcher2;
                    break;
                }
                i3++;
            }
            if (i3 == size) {
                UriMatcher uriMatcher3 = new UriMatcher();
                if (str3.equals("#")) {
                    uriMatcher3.mWhich = 1;
                } else if (str3.equals(Marker.ANY_MARKER)) {
                    uriMatcher3.mWhich = 2;
                } else {
                    uriMatcher3.mWhich = 0;
                }
                uriMatcher3.mText = str3;
                uriMatcher.mChildren.add(uriMatcher3);
                uriMatcher = uriMatcher3;
            }
            i2++;
        }
        uriMatcher.mCode = i;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0073 A[EDGE_INSN: B:41:0x0073->B:42:0x0074 BREAK  A[LOOP:2: B:26:0x004d->B:38:0x0068]] */
    public int match(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        int size = pathSegments.size();
        if (size == 0 && uri.getAuthority() == null) {
            return this.mCode;
        }
        UriMatcher uriMatcher = this;
        int i = -1;
        while (i < size) {
            String authority = i < 0 ? uri.getAuthority() : pathSegments.get(i);
            ArrayList<UriMatcher> arrayList = uriMatcher.mChildren;
            if (arrayList == null) {
                break;
            }
            uriMatcher = null;
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                UriMatcher uriMatcher2 = arrayList.get(i2);
                int i3 = uriMatcher2.mWhich;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 == 2) {
                            uriMatcher = uriMatcher2;
                            break;
                        }
                    } else {
                        int length = authority.length();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length) {
                                uriMatcher = uriMatcher2;
                                break;
                            }
                            char cCharAt = authority.charAt(i4);
                            if (((cCharAt == '-' || cCharAt == '+') && i4 != 0) || (i4 > 0 && (cCharAt < '0' || cCharAt > '9'))) {
                                break;
                            }
                            i4++;
                        }
                    }
                } else if (uriMatcher2.mText.equals(authority)) {
                    uriMatcher = uriMatcher2;
                    break;
                }
                if (uriMatcher != null) {
                    break;
                }
            }
            if (uriMatcher == null) {
                return -1;
            }
            i++;
        }
        return uriMatcher.mCode;
    }

    private UriMatcher() {
        this.mCode = -1;
        this.mWhich = -1;
        this.mChildren = new ArrayList<>();
        this.mText = null;
    }
}
