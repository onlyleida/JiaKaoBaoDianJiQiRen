.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->a:Ljava/util/Map;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->l()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->i()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->j()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->g()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->f()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u4fa7\u65b9\u505c\u8f66\uff0c\u9760\u53f3\u4fa7\u8fb9\u7ebf\u6162\u901f\u884c\u9a76\uff0c\u6ce8\u610f\u96e8\u5237\u5668\u94c6\u9489\u5904\uff0c\u59cb\u7ec8\u4e0e\u9053\u8def\u53f3\u8fb9\u7ebf\u4fdd\u6301\u91cd\u5408\u884c\u9a76"

    const-string v2, "\u8bf7\u5c06\u8f66\u8f86\u5f00\u5f80\u7eff\u8272\u7ebf\u6846\u533a\u57df\uff0c\u6ce8\u610f\u8f66\u5c3e\u4e0d\u8981\u8d85\u51fa\u7ebf\u6846\u533a\u57df"

    const-string v3, "\u53ee\u549a"

    const-string v4, "\u542c\u5230\u63d0\u793a\u97f3\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v5, "\u8bf7\u505c\u8f66\uff0c\u73b0\u5728\u5f00\u59cb\u5012\u8f66"

    .line 2
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "\u6162\u6162\u540e\u5012\uff0c\u6ce8\u610f\u5e93\u4f4d\u5de6\u524d\u89d2\u5728\u540e\u89c6\u955c\u7684\u51fa\u73b0\u65f6\u673a"

    const-string v4, "\u542c\u5230\u63d0\u793a\u97f3\u540e\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v5, "\u53ee\u549a"

    const-string v6, "\u6b64\u523b\u5e93\u4f4d\u5de6\u524d\u89d2\u521a\u521a\u4ece\u53f3\u540e\u89c6\u955c\u4e2d\u6d88\u5931\u8fd9\u662f\u5411\u53f3\u6253\u6ee1\u65b9\u5411\u7684\u53c2\u7167\u70b9\uff0c\u73b0\u5728\u8bf7\u5411\u53f3\u6253\u6ee1\u7ee7\u7eed\u540e\u5012\uff0c\u770b\u5de6\u540e\u89c6\u955c"

    const-string v7, "\u542c\u5230\u63d0\u793a\u97f3\u540e\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v8, "\u89c2\u5bdf\u5de6\u540e\u89c6\u955c\uff0c\u7262\u7262\u8bb0\u4f4f\u5e93\u4f4d\u53f3\u540e\u89d2\uff0c\u51fa\u73b0\u5728\u5de6\u540e\u89c6\u955c\u4e2d\u7684\u65f6\u673a\uff0c\u8fd9\u662f\u56de\u6b63\u65b9\u5411\u7684\u6700\u4f73\u4f4d\u7f6e\uff0c\u56de\u6b63\u65b9\u5411\uff0c\u7ee7\u7eed\u540e\u5012"

    const-string v9, "\u542c\u5230\u63d0\u793a\u97f3\u8fc5\u901f\u627e\u53c2\u7167\u70b9"

    const-string v10, "\u770b\u5de6\u540e\u89c6\u955c\uff0c\u7262\u7262\u8bb0\u4f4f\u5de6\u540e\u8f6e\u5e95\u90e8\u4e0e\u5e93\u4f4d\u865a\u7ebf\u7684\u4f4d\u7f6e\u5173\u7cfb\uff0c\u8fd9\u662f\u5de6\u6253\u6ee1\u7684\u5173\u952e\u53c2\u7167\u70b9\uff0c\u73b0\u5728\u8bf7\u5de6\u6253\u6ee1\u7ee7\u7eed\u7ec3\u4e60"

    const-string v11, "\u89c2\u5bdf\u8f66\u5934\u4e09\u5206\u4e4b\u4e00\u5904\u8fdb\u5165\u5e93\u4f4d\u8fb9\u7ebf\u65f6\u505c\u8f66"

    const-string v12, "\u8bf7\u505c\u8f66\uff0c\u4fdd\u6301\u65b9\u5411\u76d8\u5de6\u6253\u6ee1\u4e0d\u52a8\uff0c\u6302\u7a7a\u6321"

    const-string v13, "\u5f00\u5de6\u8f6c\u5411\u706f\uff0c\u6302\u4e00\u6321\u5e73\u7a33\u8d77\u6b65"

    .line 4
    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "\u89c2\u5bdf\u8f66\u5934\u5de6\u524d\u7aef\u4e09\u5206\u4e4b\u4e00\u5904\u4e0e\u9053\u8def\u5de6\u8fb9\u7ebf\u91cd\u5408\u65f6\u8fc5\u901f\u56de\u6b63\u65b9\u5411\uff0c\u5f53\u8f66\u5934\u4e2d\u5fc3\u5bf9\u51c6\u9053\u8def\u5de6\u8fb9\u7ebf\u65f6\u5411\u53f3\u6253\u4e00\u5708\u65b9\u5411"

    const-string v4, "\u56de\u6b63\u65b9\u5411"

    const-string v5, "\u53ee\u549a"

    const-string v6, "\u5411\u53f3\u6253\u4e00\u5708"

    const-string v7, "\u611f\u89c9\u8f66\u8f86\u5373\u5c06\u987a\u6b63\u65f6\uff0c\u56de\u6b63\u65b9\u5411"

    const-string v8, "\u56de\u6b63\u65b9\u5411"

    .line 6
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static c()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u5f80\u524d\u5f00\uff0c\u65b9\u5411\u76d8\u6700\u9ad8\u5904\u5bf9\u51c6\u524d\u65b9\u7b2c\u4e09\u6761\u865a\u7ebf\u7684\u5de6\u8fb9\u7f18\u76f4\u884c"

    const-string v2, "\u8bf7\u5c06\u8f66\u8f86\u9a76\u5165\u7eff\u8272\u7ebf\u6846\u533a\u57df\uff0c\u6ce8\u610f\u8f66\u5c3e\u4e0d\u8981\u9a76\u51fa\u63a7\u5236\u7ebf"

    const-string v3, "\u611f\u89c9\u5de6\u80a9\u8180\u4e0e\u51fa\u53e3\u63a7\u5236\u7ebf\u5e73\u9f50\u65f6\u505c\u8f66"

    const-string v4, "\u53ee\u549a"

    const-string v5, "\u8bf7\u505c\u8f66\uff0c\u6302\u7a7a\u6321"

    const-string v6, "\u5f00\u59cb\u5012\u5e93\uff0c\u8bf7\u6302\u5012\u6321\u5f00\u59cb\u5012\u5e93"

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "\u6162\u6162\u7684\u5f80\u540e\u5012"

    const-string v4, "\u542c\u5230\u63d0\u793a\u97f3\u540e\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v5, "\u53ee\u549a"

    const-string v6, "\u7262\u7262\u8bb0\u4f4f\u5de6\u540e\u89c6\u955c\u6839\u90e8\u4e0b\u6cbf\u4e0e\u63a7\u5236\u7ebf\u4e0b\u6cbf\u7684\u5173\u7cfb\uff0c\u73b0\u5728\u8bf7\u5411\u53f3\u6253\u6ee1\u65b9\u5411\uff0c\u6162\u62ac\u79bb\u5408\u5668\u7ee7\u7eed\u5012\u8f66\uff0c\u89c2\u5bdf\u5de6\u540e\u89c6\u955c"

    const-string v7, "\u505c\u8f66\u592a\u665a\uff0c\u5f88\u96be\u5012\u8fdb\u53bb"

    const-string v8, "\u542c\u5230\u63d0\u793a\u97f3\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v9, "\u89c2\u5bdf\u5de6\u540e\u89c6\u955c\uff0c\u7262\u7262\u8bb0\u8bb0\u4f4f\u5de6\u5e93\u811a\u51fa\u73b0\u5728\u540e\u89c6\u955c\u7684\u65f6\u673a\uff0c\u8fd9\u662f\u5411\u5de6\u56de\u4e00\u5708\u7684\u53c2\u7167\u70b9\uff0c\u73b0\u5728\u8bf7\u5411\u5de6\u56de\u4e00\u5708\u7ee7\u7eed\u7ec3\u4e60"

    const-string v10, "\u56de\u6b63\u65b9\u5411"

    const-string v11, "\u542c\u5230\u63d0\u793a\u97f3\u540e\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v12, "\u8bb0\u4f4f\u5f53\u524d\u5de6\u540e\u89c6\u955c\u4e0b\u6cbf\u4e0e\u5de6\u8fb9\u8f66\u9053\u7ebf\u7684\u4f4d\u7f6e\u5173\u7cfb\uff0c\u8fd9\u662f\u505c\u8f66\u65f6\u673a\u7684\u53c2\u7167\u70b9\uff0c\u8bf7\u6302\u7a7a\u6321"

    const-string v13, "\u505c\u8f66\u4f4d\u7f6e\u5408\u9002\uff0c\u6302\u4e00\u6321\u5f00\u59cb\u5de6\u51fa\u5e93"

    const-string v14, "\u505c\u8f66\u4f4d\u7f6e\u504f\u5de6\uff0c\u6302\u4e00\u6321\u5f00\u59cb\u5de6\u51fa\u5e93"

    const-string v15, "\u505c\u8f66\u4f4d\u7f6e\u504f\u53f3\uff0c\u6302\u4e00\u6321\u5f00\u59cb\u5de6\u51fa\u5e93"

    .line 4
    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "\u6162\u6162\u5411\u524d\u5f00"

    const-string v4, "\u542c\u5230\u63d0\u793a\u97f3\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v5, "\u53ee\u549a"

    const-string v6, "\u7262\u7262\u8bb0\u4f4f\u6b64\u523b\u8f66\u5934\u4e0e\u524d\u8fb9\u7ebf\u7684\u4f4d\u7f6e\u5173\u7cfb\uff0c\u8fd9\u662f\u8fc5\u901f\u5411\u5de6\u6253\u4e00\u5708\u534a\u65b9\u5411\u7684\u53c2\u7167\u70b9\uff0c\u73b0\u5728\u5411\u5de6\u6253\u4e00\u5708\u534a\u65b9\u5411\u7ee7\u7eed\u7ec3\u4e60"

    const-string v7, "\u611f\u89c9\u5de6\u80a9\u8180\u4e0e\u63a7\u5236\u7ebf\u5e73\u9f50\u65f6\u505c\u8f66"

    const-string v8, "\u505c\u8f66\uff0c\u8bf7\u6302\u7a7a\u6321"

    const-string v9, "\u4eb2\uff0c\u6302\u5012\u6321\uff0c\u4fdd\u6301\u65b9\u5411\u76d8\u5de6\u6253\u4e00\u5708\u534a\u4e0d\u52a8\uff0c\u5f00\u59cb\u5de6\u5012\u5e93"

    .line 6
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "\u770b\u5de6\u540e\u89c6\u955c\uff0c\u611f\u89c9\u5de6\u540e\u8f6e\u5230\u5de6\u5e93\u89d2\u7684\u8ddd\u79bb\u8fc7\u5927\u65f6\u5411\u5de6\u6253\u6ee1\u65b9\u5411"

    const-string v4, "\u770b\u53f3\u540e\u89c6\u955c\uff0c\u5f53\u8f66\u8eab\u53f3\u4fa7\u4e0e\u8f66\u5e93\u8fb9\u7ebf\u5373\u5c06\u5e73\u884c\u65f6\u56de\u6b63\u65b9\u5411"

    const-string v5, "\u56de\u6b63\u65b9\u5411"

    const-string v6, "\u53ee\u549a"

    const-string v7, "\u542c\u5230\u63d0\u793a\u97f3\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v8, "\u8bb0\u4f4f\u5f53\u524d\u5de6\u540e\u89c6\u955c\u4e0b\u6cbf\u4e0e\u5de6\u8fb9\u8f66\u9053\u7ebf\u7684\u4f4d\u7f6e\u5173\u7cfb\uff0c\u8fd9\u662f\u505c\u8f66\u65f6\u673a\u7684\u53c2\u7167\u70b9\uff0c\u8bf7\u6302\u7a7a\u6321"

    const-string v9, "\u505c\u8f66\u4f4d\u7f6e\u5408\u9002\uff0c\u6302\u4e00\u6321\u5f00\u59cb\u53f3\u51fa\u5e93"

    const-string v10, "\u505c\u8f66\u4f4d\u7f6e\u504f\u5de6\uff0c\u6302\u4e00\u6321\u5f00\u59cb\u53f3\u51fa\u5e93"

    const-string v11, "\u505c\u8f66\u4f4d\u7f6e\u504f\u53f3\uff0c\u6302\u4e00\u6321\u5f00\u59cb\u53f3\u51fa\u5e93"

    .line 8
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u6162\u6162\u5411\u524d\u5f00"

    const-string v2, "\u542c\u5230\u63d0\u793a\u97f3\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v3, "\u53ee\u549a"

    const-string v4, "\u7262\u7262\u8bb0\u4f4f\u6b64\u523b\u8f66\u5934\u4e0e\u524d\u8fb9\u7ebf\u7684\u4f4d\u7f6e\u5173\u7cfb\uff0c\u8fd9\u662f\u8fc5\u901f\u5411\u53f3\u6253\u4e00\u5708\u534a\u65b9\u5411\u7684\u53c2\u7167\u70b9\uff0c\u73b0\u5728\u5411\u53f3\u6253\u4e00\u5708\u534a\u65b9\u5411\u7ee7\u7eed\u7ec3\u4e60"

    const-string v5, "\u56de\u6b63\u65b9\u5411"

    .line 10
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u542f\u52a8\u8f66\u8f86\u5411\u524d\u884c\u9a76\uff0c\u9760\u8fd1\u6536\u8d39\u5904\u9700\u51cf\u901f\u6162\u884c\uff0c\u4ee5\u8f66\u5934\u5de6\u4fa71/3\u5bf9\u51c6\u5de6\u4fa7\u8def\u8fb9\u7f18\u7ebf\u884c\u9a76\uff0c\u63a7\u5236\u8f66\u8eab\u4e0e\u5de6\u4fa7\u8def\u8fb9\u7f18\u7ebf\u7684\u8ddd\u79bb\u572850\u5398\u7c73\u4ee5\u5185"

    const-string v2, "\u770b\u5de6\u4fa7\u8f66\u7a97\uff0c\u5f53\u6536\u8d39\u5361\u7bb1\u51fa\u73b0\u5728\u8f66\u7a97\u4e2d\u95f4\u4f4d\u7f6e\u65f6\uff0c\u505c\u8f66\uff0c\u6302\u7a7a\u6321\uff0c\u62c9\u624b\u5239"

    const-string v3, "\u5f53\u5de6\u4fa7\u52a8\u753b\u89c6\u7a97\u5b8c\u6210\u53d6\u5361\u540e\uff0c\u524d\u65b9\u680f\u6746\u81ea\u52a8\u5347\u8d77\uff0c\u6b64\u65f6\u6302\u524d\u8fdb\u6321\uff0c\u677e\u624b\u5239\uff0c\u8f66\u8f86\u8d77\u6b65\u9a76\u51fa\u9879\u76ee"

    .line 2
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static e()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u6a21\u62df\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u9762\uff0c\u8bf7\u6253\u5f00\u793a\u5ed3\u706f\u3001\u524d\u7167\u706f\u3001\u96fe\u706f\u3001\u5371\u9669\u62a5\u8b66\u95ea\u5149\u706f\u3001\u96e8\u522e\u5668"

    const-string v2, "\u4fdd\u6301\u4f4e\u901f\u884c\u9a76\uff0c\u4e0d\u8981\u505c\u8f66"

    const-string v3, "\u5fae\u8c03\u65b9\u5411\uff0c\u4f7f\u8f66\u4fdd\u6301\u5728\u9ec4\u7ebf\u5185\u884c\u9a76"

    const-string v4, "\u8bf7\u5173\u95ed\u6240\u6709\u706f\u5149\u53ca\u96e8\u522e\u5668"

    .line 2
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static f()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u524d\u65b9\u51fa\u73b0\u7d27\u6025\u60c5\u51b5\uff0c\u8fc5\u901f\u505c\u8f66"

    const-string v2, "\u505c\u8f66\u540e\u5f00\u542f\u5371\u9669\u62a5\u8b66\u95ea\u5149\u706f"

    const-string v3, "\u7b49\u5f855\u79d2\uff0c\u5173\u706f\uff0c\u6302\u4e00\u6863\u5e73\u7a33\u8d77\u6b65\u9a76\u51fa\u9879\u76ee"

    .line 2
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static g()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u542f\u52a8\u8f66\u8f86\u5411\u524d\u884c\u9a76\uff0c\u9760\u8fd1\u6536\u8d39\u5904\u9700\u51cf\u901f\u6162\u884c\uff0c\u4ee5\u8f66\u5934\u5de6\u4fa71/3\u5bf9\u51c6\u5de6\u4fa7\u8def\u8fb9\u7f18\u7ebf\u884c\u9a76\uff0c\u63a7\u5236\u8f66\u8eab\u4e0e\u5de6\u4fa7\u8def\u8fb9\u7f18\u7ebf\u7684\u8ddd\u79bb\u572850\u5398\u7c73\u4ee5\u5185"

    const-string v2, "\u770b\u5de6\u4fa7\u8f66\u7a97\uff0c\u5f53\u6536\u8d39\u5361\u7bb1\u51fa\u73b0\u5728\u8f66\u7a97\u4e2d\u95f4\u4f4d\u7f6e\u65f6\uff0c\u505c\u8f66\uff0c\u6302\u7a7a\u6321\uff0c\u62c9\u624b\u5239\uff0c\u6b64\u4f4d\u7f6e\u53ef\u5b8c\u6210\u53d6\u5361"

    const-string v3, "\u5f53\u5de6\u4fa7\u52a8\u753b\u89c6\u7a97\u5b8c\u6210\u53d6\u5361\u540e\uff0c\u524d\u65b9\u680f\u6746\u81ea\u52a8\u5347\u8d77\uff0c\u6b64\u65f6\u6302\u524d\u8fdb\u6321\uff0c\u677e\u624b\u5239\uff0c\u8f66\u8f86\u8d77\u6b65\u9a76\u51fa\u9879\u76ee\uff0c\u5b8c\u6210\u6a21\u62df\u9ad8\u901f\u516c\u8def\u505c\u8f66\u53d6\u5361"

    .line 2
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static h()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u8fdb\u5165\u66f2\u7ebf\uff0c\u8bf7\u6162\u901f\u884c\u9a76\uff0c\u89c2\u5bdf\u524d\u673a\u76d6\u5de6\u4fa7\u4e09\u5206\u4e4b\u4e00\u5904\u4e0e\u9053\u8def\u53f3\u8fb9\u7ebf\u91cd\u5408\u65f6\u8fc5\u901f\u5de6\u6253\u4e00\u5708\u52a0\u4e5d\u5341\u5ea6\u65b9\u5411"

    const-string v2, "\u987a\u7740\u66f2\u7ebf\u7684\u5e45\u5ea6\u5411\u5de6\u8c03\u6574"

    const-string v3, "\u53ee\u549a"

    const-string v4, "\u8bf7\u4fdd\u6301\u524d\u673a\u76d6\u5de6\u4fa7\u4e09\u5206\u4e4b\u4e00\u5904\u4e0e\u9053\u8def\u53f3\u8fb9\u7ebf\u91cd\u5408\u884c\u9a76"

    const-string v5, "\u6ce8\u610f\u89c2\u5bdf\u96e8\u5237\u5668\u94c6\u9489\u5904\u8d8a\u8fc7\u9053\u8def\u53f3\u8fb9\u7ebf\u8fc5\u901f\u56de\u6b63\u65b9\u5411"

    const-string v6, "\u987a\u7740\u66f2\u7ebf\u7684\u5f27\u5ea6\u56de\u6b63\u65b9\u5411"

    const-string v7, "\u89c2\u5bdf\u96e8\u5237\u5668\u94c6\u9489\u5904\u4e0e\u9053\u8def\u5de6\u8fb9\u7ebf\u91cd\u5408\u65f6\u8fc5\u901f\u5411\u53f3\u6253\u4e00\u5708\u52a090\u5ea6\u65b9\u5411\uff0c\u4f7f\u96e8\u5237\u5668\u94c6\u9489\u5904\u4e0e\u9053\u8def\u5de6\u8fb9\u7ebf\u4fdd\u6301\u91cd\u5408\u884c\u9a76"

    const-string v8, "\u987a\u7740\u66f2\u7ebf\u7684\u5f27\u5ea6\u5411\u53f3\u8c03\u6574"

    const-string v9, "\u8c03\u6574\u65b9\u5411\uff0c\u4f7f\u8f66\u987a\u6b63\u9a76\u51fa\u79d1\u76ee"

    .line 2
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static i()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u4e0a\u5761\u8d77\u6b65\uff0c\u9760\u53f3\u4fa7\u8fb9\u7ebf\u6162\u901f\u884c\u9a76\uff0c\u6ce8\u610f\u96e8\u5237\u5668\u94c6\u9489\u5904\uff0c\u59cb\u7ec8\u4e0e\u9053\u8def\u53f3\u8fb9\u7ebf\u4fdd\u6301\u91cd\u5408\u884c\u9a76"

    const-string v2, "\u542c\u5230\u63d0\u793a\u97f3\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v3, "\u53ee\u549a"

    const-string v4, "\u7262\u7262\u8bb0\u4f4f\u5de6\u540e\u89c6\u955c\u6839\u90e8\u4e0b\u6cbf\u4e0e\u505c\u8f66\u6869\u7ebf\u7684\u5173\u7cfb\uff0c\u73b0\u5728\u8bf7\u6162\u62ac\u79bb\u5408\uff0c\u8f66\u8f86\u6296\u52a8\u6216\u8005\u8f66\u5934\u62ac\u8d77\u65f6\uff0c\u653e\u4e0b\u624b\u5239\u677e\u5f00\u811a\u5239\u7ee7\u7eed\u4e0a\u5761"

    const-string v5, "\u505a\u7684\u4e0d\u9519\uff0c\u6ca1\u6709\u540e\u6e9c"

    const-string v6, "\u8f66\u8f86\u540e\u6e9c\uff0c\u4e0b\u6b21\u7b49\u5230\u8f66\u8f86\u6296\u52a8\u6216\u8005\u8f66\u5934\u62ac\u8d77\u65f6\uff0c\u518d\u677e\u5239\u8f66\u54e6"

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static j()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u6a21\u62df\u96a7\u9053\u884c\u9a76\uff0c\u4f4e\u901f\u884c\u9a76\uff0c\u63d0\u524d\u5f00\u542f\u524d\u7167\u706f"

    const-string v2, "\u96a7\u9053\u5185\u63a7\u5236\u8f66\u901f\uff0c\u4e0d\u8981\u968f\u610f\u53d8\u6362\u8f66\u9053"

    const-string v3, "\u9a76\u51fa\u96a7\u9053\u524d\uff0c\u5173\u95ed\u524d\u7167\u706f"

    .line 2
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static k()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u8f66\u8eab\u9760\u8fd1\u53f3\u4fa7\u6807\u51c6\u7ebf\uff0c\u6b63\u5bf9\u5e93\u533a\u76f4\u7ebf\u884c\u9a76\uff0c\u8fdb\u5165\u8981\u6c42\u5728120\u79d2\u5185\u5b8c\u6210\u6389\u5934\u52a8\u4f5c\uff0c\u5e76\u4e14\u8f6e\u80ce\u4e0d\u80fd\u89e6\u78b0\u5e93\u4f4d\u8fb9\u7f18\u7ebf"

    const-string v2, "\u8f66\u8eab\u9760\u53f3\uff0c\u4e0d\u8981\u89e6\u78b0\u5e93\u4f4d\u8fb9\u7f18\u7ebf\u7684\u60c5\u51b5\u4e0b\u7f13\u7f13\u5411\u524d\u884c\u9a76\uff0c\u89c6\u7ebf\u7d27\u76ef\u6b63\u524d\u65b9\u5e93\u4f4d\u8fb9\u7f18\u7ebf"

    const-string v3, "\u5f53\u89c6\u7ebf\u91cc\uff0c\u770b\u5230\u6b63\u524d\u65b9\u5e93\u4f4d\u8fb9\u7f18\u7ebf\u4e0e\u8f66\u8f86\u524d\u5934\u4f4d\u7f6e\u5dee\u4e00\u62f3\u8ddd\u79bb\u91cd\u5408\u65f6\uff0c\u65b9\u5411\u76d8\u8fc5\u901f\u5de6\u6253\u6b7b"

    const-string v4, "\u63a2\u5934\u770b\u5de6\u524d\u8f6e\uff0c\u5f53\u5de6\u524d\u8f6e\u4e0e\u5e93\u4f4d\u5de6\u4fa7\u8fb9\u7f18\u7ebf\u8ddd\u79bb20\u516c\u5206\u5de6\u53f3\u65f6\uff0c\u505c\u8f66\uff0c\u65b9\u5411\u76d8\u53f3\u6253\u6b7b\uff0c\u6362\u5012\u6321"

    const-string v5, "\u5411\u540e\u5012\u8f66\uff0c\u89c6\u7ebf\u770b\u5de6\u4fa7\u540e\u89c6\u955c\uff0c\u5f53\u540e\u89c6\u955c\u91cc\u770b\u5230\u5de6\u540e\u8f6e\u80ce\u79bb\u5e93\u4f4d\u8fb9\u7f18\u7ebf20\u516c\u5206\u5de6\u53f3\u8ddd\u79bb\u65f6\u505c\u8f66\uff0c\u65b9\u5411\u76d8\u5de6\u6253\u6b7b\uff0c\u6362\u524d\u8fdb\u6863"

    const-string v6, "\u8f66\u8f86\u5f00\u51fa\u5e93\u533a\uff0c\u8f66\u5934\u6b63\u5bf9\u524d\u65b9\u65f6\uff0c\u65b9\u5411\u56de\u6b63"

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static l()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u76f4\u89d2\u8f6c\u5f2f\uff0c\u5f00\u5de6\u8f6c\u5411\u706f\uff0c\u9760\u53f3\u4fa7\u8fb9\u7ebf\u6162\u901f\u884c\u9a76\uff0c\u6ce8\u610f\u96e8\u5237\u5668\u94c6\u9489\u5904\uff0c\u59cb\u7ec8\u4e0e\u9053\u8def\u53f3\u8fb9\u7ebf\u4fdd\u6301\u91cd\u5408\u884c\u9a76"

    const-string v2, "\u542c\u5230\u63d0\u793a\u97f3\u8fc5\u901f\u505c\u8f66\u627e\u53c2\u7167\u70b9"

    const-string v3, "\u53ee\u549a"

    const-string v4, "\u7262\u7262\u8bb0\u4f4f\u524d\u673a\u76d6\u4e0e\u524d\u8fb9\u7ebf\uff08\u5373\u4e0a\u8fb9\u7ebf\uff09\u7684\u4f4d\u7f6e\u5173\u7cfb\uff0c\u6b64\u5904\u662f\u5411\u5de6\u6253\u6ee1\u65b9\u5411\u7684\u5173\u952e\u53c2\u7167\u70b9\uff0c\u73b0\u5728\u8bf7\u5de6\u6253\u6ee1\u7ee7\u7eed\u7ec3\u4e60"

    const-string v5, "\u8f66\u8f86\u5373\u5c06\u6446\u6b63\uff0c\u56de\u6b63\u65b9\u5411"

    .line 2
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/framework/h/b;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    const-string p1, ""

    .line 1
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    aget-object p1, p1, p3

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z1;->a:Ljava/util/Map;

    iget v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p3, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    if-nez p2, :cond_1

    .line 4
    invoke-interface {p3, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 6
    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p2, "\u91c7\u96c6\u6807\u51c6\u8f68\u8ff9"

    .line 7
    aput-object p2, v0, v3

    const/4 p2, 0x1

    const-string v1, "\u81ea\u5b9a\u4e49\u63d0\u793a\u5185\u5bb9"

    .line 8
    aput-object v1, v0, p2

    .line 9
    new-instance p2, Landroidx/appcompat/app/c$a;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/c;

    invoke-direct {p1, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;[Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/app/c$a;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
