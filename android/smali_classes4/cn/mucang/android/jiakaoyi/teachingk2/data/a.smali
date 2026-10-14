.class public Lcn/mucang/android/jiakaoyi/teachingk2/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->n()V

    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;
    .locals 8

    const-string v0, "TAG"

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "K2_"

    const-string v2, ""

    .line 2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Teach_"

    .line 4
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cn.mucang.android.jiakaoyi.teachingk2.rule."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_Event"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 8
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v2, :cond_1

    aget-object v6, p1, v4

    .line 9
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 10
    array-length v7, v7

    if-ne v7, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_2

    new-array p1, v5, [Ljava/lang/Object;

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;-><init>()V

    aput-object v2, p1, v3

    const/4 v2, 0x1

    aput-object p0, p1, v2

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    return-object p0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6263\u5206\u9879\u6784\u9020\u5931\u8d25:deduct = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " , Constructor = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56fa\u5b9a\u4e8b\u4ef6\u6263\u5206\u9879\u6784\u9020\u5931\u8d25:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v1
.end method

.method private static b()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x32c9

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x32c9

    const-string v4, "\u8f66\u8eab\u51fa\u5e93\u53f3\u8fb9\u7ebf"

    const-string v5, "\u8f66\u8eab\u51fa\u5e93\u53f3\u8fb9\u7ebf"

    const/16 v6, 0x64

    move-object v2, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32ca

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x32ca

    const-string v4, "\u8f66\u8eab\u51fa\u5e93\u5e95\u8fb9\u7ebf"

    const-string v5, "\u8f66\u8eab\u51fa\u5e93\u5e95\u8fb9\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32cb

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x32cb

    const-string v4, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const-string v5, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32cc

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x32cc

    const-string v4, "\u51fa\u5e93\u65f6\u672a\u6253\u8f6c\u5411\u706f"

    const-string v5, "\u51fa\u5e93\u65f6\u672a\u6253\u8f6c\u5411\u706f"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32cd

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x32cd

    const-string v4, "\u51fa\u5e93\u65f6\u6253\u9519\u8f6c\u5411\u706f"

    const-string v5, "\u51fa\u5e93\u65f6\u6253\u9519\u8f6c\u5411\u706f"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32ce

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x32ce

    const-string v4, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32cf

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x32cf

    const-string v4, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32d0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x32d0

    const-string v4, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32d1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x32d1

    const-string v4, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32d2

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x32d2

    const-string v4, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    const-string v5, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static c()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x2af9

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x2af9

    const-string v4, "\u8f66\u8eab\u51fa\u5e93\u5de6\u8fb9\u7ebf"

    const-string v5, "\u8f66\u8eab\u51fa\u5e93\u5de6\u8fb9\u7ebf"

    const/16 v6, 0x64

    move-object v2, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2afa

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2afa

    const-string v4, "\u8f66\u8eab\u51fa\u5e93\u53f3\u8fb9\u7ebf"

    const-string v5, "\u8f66\u8eab\u51fa\u5e93\u53f3\u8fb9\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2afb

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2afb

    const-string v4, "\u8f66\u8eab\u51fa\u5e93\u5e95\u8fb9\u7ebf"

    const-string v5, "\u8f66\u8eab\u51fa\u5e93\u5e95\u8fb9\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2afc

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2afc

    const-string v4, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const-string v5, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2afd

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2afd

    const-string v4, "\u5012\u5e93\u4e0d\u5165"

    const-string v5, "\u5012\u5e93\u4e0d\u5165"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2afe

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2afe

    const-string v4, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2aff

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2aff

    const-string v4, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2b00

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2b00

    const-string v4, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2b01

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2b01

    const-string v4, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2b02

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2b02

    const-string v4, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    const-string v5, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method private static e()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x4a3a

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x4a3a

    const-string v4, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const/16 v6, 0x64

    move-object v2, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4a3b

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4a3b

    const-string v4, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4a3c

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4a3c

    const-string v4, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4a3d

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4a3d

    const-string v4, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static f()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x3e81

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x3e81

    const-string v4, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const-string v5, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const/16 v6, 0x64

    move-object v2, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e82

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e82

    const-string v4, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e83

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e83

    const-string v4, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e84

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e84

    const-string v4, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e85

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e85

    const-string v4, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e86

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e86

    const-string v4, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    const-string v5, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e87

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e87

    const-string v4, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u9884\u62a5\u70b9\u524d\uff0c\u64cd\u4f5c\u706f\u5149"

    const-string v5, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u9884\u62a5\u70b9\u524d\uff0c\u64cd\u4f5c\u706f\u5149"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e88

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e88

    const-string v4, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u524d\uff0c\u672a\u8e29\u5239\u8f66\u51cf\u901f"

    const-string v5, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u524d\uff0c\u672a\u8e29\u5239\u8f66\u51cf\u901f"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e89

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e89

    const-string v4, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u672a\u5f00\u5e94\u6025\u706f"

    const-string v5, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u672a\u5f00\u5e94\u6025\u706f"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e8a

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e8a

    const-string v4, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u672a\u5f00\u96fe\u706f"

    const-string v5, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u672a\u5f00\u96fe\u706f"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e8b

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e8b

    const-string v4, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u672a\u5f00\u5927\u706f"

    const-string v5, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u672a\u5f00\u5927\u706f"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e8c

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e8c

    const-string v4, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u672a\u5f00\u96e8\u522e\u5668"

    const-string v5, "\u8fdb\u5165\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u672a\u5f00\u96e8\u522e\u5668"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e8d

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e8d

    const-string v4, "\u79bb\u5f00\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u65f6\u672a\u5173\u95ed\u706f\u5149"

    const-string v5, "\u79bb\u5f00\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u65f6\u672a\u5173\u95ed\u706f\u5149"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e8e

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3e8e

    const-string v4, "\u79bb\u5f00\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u65f6\u672a\u5173\u95ed\u96e8\u522e"

    const-string v5, "\u79bb\u5f00\u96e8\u96fe\u5929\u6e7f\u6ed1\u8def\u65f6\u672a\u5173\u95ed\u96e8\u522e"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static g()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x5209

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x5209

    const-string v4, "\u505c\u8f66\u540e\u672a\u53ca\u65f6\u6253\u5f00\u62a5\u8b66\u706f"

    const-string v5, "\u505c\u8f66\u540e\u672a\u53ca\u65f6\u6253\u5f00\u62a5\u8b66\u706f"

    const/16 v6, 0x64

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static h()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x4e21

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x4e21

    const-string v4, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const-string v5, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const/16 v6, 0x64

    move-object v2, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e22

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4e22

    const-string v4, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e23

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4e23

    const-string v4, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e24

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4e24

    const-string v4, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e25

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4e25

    const-string v4, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e26

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4e26

    const-string v4, "\u9a76\u8fc7\u505c\u8f66\u53d6\u5361\u4f4d\u7f6e\u672a\u505c\u8f66"

    const-string v5, "\u9a76\u8fc7\u505c\u8f66\u53d6\u5361\u4f4d\u7f6e\u672a\u505c\u8f66"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e27

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4e27

    const-string v4, "\u8f66\u8eab\u8ddd\u8def\u8fb9\u7ebf\u5927\u4e8e50\u5398\u7c73"

    const-string v5, "\u8f66\u8eab\u8ddd\u8def\u8fb9\u7ebf\u5927\u4e8e50\u5398\u7c73"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e28

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4e28

    const-string v4, "\u505c\u8f66\u540e\u672a\u62c9\u624b\u5239"

    const-string v5, "\u505c\u8f66\u540e\u672a\u62c9\u624b\u5239"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static i()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x3a99

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x3a99

    const-string v4, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const-string v5, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const/16 v6, 0x64

    move-object v2, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3a9a

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3a9a

    const-string v4, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3a9b

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3a9b

    const-string v4, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3a9c

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3a9c

    const-string v4, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3a9d

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3a9d

    const-string v4, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3a9e

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x3a9e

    const-string v4, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    const-string v5, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static j()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x2ee1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x2ee1

    const-string v4, "\u524d\u4fdd\u9669\u6760\u672a\u5b9a\u4e8e\u6869\u6746\u7ebf"

    const-string v5, "\u524d\u4fdd\u9669\u6760\u672a\u5b9a\u4e8e\u6869\u6746\u7ebf"

    const/16 v6, 0x64

    move-object v2, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ee2

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2ee2

    const-string v4, "\u8f66\u8eab\u8ddd\u8def\u8fb9\u7ebf\u8d85\u51fa30\u5398\u7c73\uff0c\u672a\u8d85\u51fa50\u5398\u7c73"

    const-string v5, "\u8f66\u8eab\u8ddd\u8def\u8fb9\u7ebf\u8d85\u51fa30\u5398\u7c73\uff0c\u672a\u8d85\u51fa50\u5398\u7c73"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ee3

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2ee3

    const-string v4, "\u8f66\u8eab\u51fa\u53f3\u8fb9\u7ebf"

    const-string v5, "\u8f66\u8eab\u51fa\u53f3\u8fb9\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ee4

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2ee4

    const-string v4, "\u8f66\u8eab\u51fa\u5de6\u8fb9\u7ebf"

    const-string v5, "\u8f66\u8eab\u51fa\u5de6\u8fb9\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ee5

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2ee5

    const-string v4, "\u8f66\u8f86\u540e\u6e9c\u8d85\u51fa10\u5398\u7c73\uff0c\u672a\u8d85\u51fa30\u5398\u7c73"

    const-string v5, "\u8f66\u8f86\u540e\u6e9c\u8d85\u51fa10\u5398\u7c73\uff0c\u672a\u8d85\u51fa30\u5398\u7c73"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ee6

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2ee6

    const-string v4, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ee7

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2ee7

    const-string v4, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ee8

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2ee8

    const-string v4, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ee9

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2ee9

    const-string v4, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2eea

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2eea

    const-string v4, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    const-string v5, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2eeb

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2eeb

    const-string v4, "\u8f66\u8eab\u8ddd\u8def\u8fb9\u7ebf\u8d85\u51fa50\u5398\u7c73"

    const-string v5, "\u8f66\u8eab\u8ddd\u8def\u8fb9\u7ebf\u8d85\u51fa50\u5398\u7c73"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2eec

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x2eec

    const-string v4, "\u8f66\u8f86\u540e\u6e9c\u8d85\u51fa30\u5398\u7c73"

    const-string v5, "\u8f66\u8f86\u540e\u6e9c\u8d85\u51fa30\u5398\u7c73"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static k()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x4269

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x4269

    const-string v4, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const-string v5, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const/16 v6, 0x64

    move-object v2, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x426a

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x426a

    const-string v4, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x426b

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x426b

    const-string v4, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x426c

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x426c

    const-string v4, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x426d

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x426d

    const-string v4, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x426e

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x426e

    const-string v4, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    const-string v5, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x426f

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x426f

    const-string v4, "\u8fdb\u5165\u96a7\u9053\u524d\uff0c\u672a\u8e29\u5239\u8f66\u51cf\u901f"

    const-string v5, "\u8fdb\u5165\u96a7\u9053\u524d\uff0c\u672a\u8e29\u5239\u8f66\u51cf\u901f"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4270

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4270

    const-string v4, "\u8fdb\u5165\u96a7\u9053\u65f6\u672a\u9e23\u5587\u53ed"

    const-string v5, "\u8fdb\u5165\u96a7\u9053\u65f6\u672a\u9e23\u5587\u53ed"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4271

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4271

    const-string v4, "\u8fdb\u5165\u96a7\u9053\u9884\u62a5\u70b9\u524d\uff0c\u5f00\u542f\u5927\u706f"

    const-string v5, "\u8fdb\u5165\u96a7\u9053\u9884\u62a5\u70b9\u524d\uff0c\u5f00\u542f\u5927\u706f"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4272

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4272

    const-string v4, "\u8fdb\u5165\u96a7\u9053\u65f6\u672a\u5f00\u542f\u5927\u706f"

    const-string v5, "\u8fdb\u5165\u96a7\u9053\u65f6\u672a\u5f00\u542f\u5927\u706f"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4273

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4273

    const-string v4, "\u79bb\u5f00\u96a7\u9053\u524d\u672a\u9e23\u5587\u53ed"

    const-string v5, "\u79bb\u5f00\u96a7\u9053\u524d\u672a\u9e23\u5587\u53ed"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4274

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4274

    const-string v4, "\u4e0d\u6309\u8003\u8bd5\u5458\u6307\u4ee4\u9a7e\u9a76"

    const-string v5, "\u4e0d\u6309\u8003\u8bd5\u5458\u6307\u4ee4\u9a7e\u9a76"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4275

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4275

    const-string v4, "\u79bb\u5f00\u96a7\u9053\u65f6\u672a\u5173\u95ed\u5927\u706f"

    const-string v5, "\u79bb\u5f00\u96a7\u9053\u65f6\u672a\u5173\u95ed\u5927\u706f"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static l()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x4651

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x4651

    const-string v4, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const-string v5, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const/16 v6, 0x64

    move-object v2, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4652

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4652

    const-string v4, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4653

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4653

    const-string v4, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4654

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4654

    const-string v4, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4655

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4655

    const-string v4, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4656

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4656

    const-string v4, "\u672a\u6309\u89c4\u5b9a\u5b8c\u6210\u9879\u76ee"

    const-string v5, "\u672a\u6309\u89c4\u5b9a\u5b8c\u6210\u9879\u76ee"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4657

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x4657

    const-string v4, "\u672a\u5728\u89c4\u5b9a\u7684\u52a8\u4f5c\u5185\u5b8c\u6210\u6389\u5934"

    const-string v5, "\u672a\u5728\u89c4\u5b9a\u7684\u52a8\u4f5c\u5185\u5b8c\u6210\u6389\u5934"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static m()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x36b1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->both:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    const/16 v3, 0x36b1

    const-string v4, "\u672a\u6253\u8f6c\u5411\u706f"

    const-string v5, "\u672a\u6253\u8f6c\u5411\u706f"

    const/16 v6, 0x64

    move-object v2, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x36b2

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x36b2

    const-string v4, "\u8f6c\u5411\u706f\u9519\u8bef"

    const-string v5, "\u8f6c\u5411\u706f\u9519\u8bef"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x36b3

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x36b3

    const-string v4, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    const-string v5, "\u8f66\u8eab\u8f67\u9053\u8def\u8fb9\u7f18\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x36b4

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x36b4

    const-string v4, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x36b5

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x36b5

    const-string v4, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u524d\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x36b6

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x36b6

    const-string v4, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u5de6\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x36b7

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x36b7

    const-string v4, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    const-string v5, "\u53f3\u540e\u8f6e\u538b\u7ebf"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x36b8

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    const/16 v3, 0x36b8

    const-string v4, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    const-string v5, "\u8d77\u6b65\u65f6\u672a\u677e\u624b\u5239"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static n()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k2Steps()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_1

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_2

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->j()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_3

    .line 8
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_4

    .line 10
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->m()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_4
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_5

    .line 12
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_5
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_6

    .line 14
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->f()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_6
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_7

    .line 16
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->k()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_7
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_8

    .line 18
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->h()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_8
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_9

    .line 20
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->l()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 21
    :cond_9
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_a

    .line 22
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->g()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 23
    :cond_a
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_0

    .line 24
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->e()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    return-void
.end method
