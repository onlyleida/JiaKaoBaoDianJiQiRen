package cn.mucang.jiakaoyi.uilib.upgrade.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class UpgradeParameterV2 implements Serializable {
    public int hardwarePlatform;
    public int type;
    public int version;
    public int[] businessVersion = {1, 2};
    public int updateVersion = 1;
}
