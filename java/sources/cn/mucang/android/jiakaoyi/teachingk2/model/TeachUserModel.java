package cn.mucang.android.jiakaoyi.teachingk2.model;

import cn.mucang.android.account.data.AuthUser;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class TeachUserModel implements Serializable {
    public static final int TYPE_IMPLEMENTER = 2;
    public String authToken;
    public AuthUser authUser;
    public String avatar;
    public int cardType;
    public boolean debugUser;
    public int gender;
    public String idCardEncrypted;
    public String idCardMask;
    public String mucangId;
    public String name;
    public long studentId;
    public long tenantId;
    public int type;
    public int userType;
    public String xyToken;
}
