package cn.mucang.android.jiakaoyi.k3collect.db;

import cn.mucang.android.core.db.IdEntity;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ArrowMarkSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.BanMaLineSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CenterCircleSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CrossRoadMarkSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.GridLineSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.StopLineSrcData;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class K3HpMapEntity extends IdEntity {
    private String content;
    private String examSiteId;
    private int type;

    public K3HpMapEntity(String str, String str2, int i) {
        this.examSiteId = str;
        this.content = str2;
        this.type = i;
    }

    public String getContent() {
        return this.content;
    }

    public String getExamSiteId() {
        return this.examSiteId;
    }

    public JSONObject getJSONObject() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", this.type);
            jSONObject.put("examSiteId", this.examSiteId);
            jSONObject.put(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, this.content);
            jSONObject.put(TtmlNode.ATTR_ID, this._id);
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public int getType() {
        return this.type;
    }

    public K3SrcData parseSrcData() {
        K3SrcData k3SrcData = null;
        if (n0.e(this.content)) {
            return null;
        }
        switch (this.type) {
            case 1:
            case 3:
            case 4:
            case 10:
            case 12:
                k3SrcData = SingleLineSrcData.parse(this.content);
                break;
            case 2:
                k3SrcData = ShuangHuangSrcData.parse(this.content);
                break;
            case 5:
                k3SrcData = BanMaLineSrcData.parse(this.content);
                break;
            case 6:
                k3SrcData = ArrowMarkSrcData.parse(this.content);
                break;
            case 7:
                k3SrcData = CenterCircleSrcData.parse(this.content);
                break;
            case 8:
                k3SrcData = GridLineSrcData.parse(this.content);
                break;
            case 9:
                k3SrcData = StopLineSrcData.parse(this.content);
                break;
            case 11:
                k3SrcData = CrossRoadMarkSrcData.parse(this.content);
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                k3SrcData = CommonSrcData.parse(this.content);
                break;
            default:
                try {
                    k3SrcData = CommonSrcData.parse(this.content);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                break;
        }
        if (k3SrcData != null) {
            k3SrcData.id = this._id;
        }
        return k3SrcData;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setExamSiteId(String str) {
        this.examSiteId = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public K3HpMapEntity() throws JSONException {
    }
}
