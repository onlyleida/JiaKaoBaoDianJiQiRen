.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider;
.super Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J*\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider;",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;",
        "args",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "getSetting",
        "",
        "",
        "loadType",
        "",
        "itemList",
        "Landroidx/lifecycle/MutableLiveData;",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider;->getSetting$lambda-1(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider;->getSetting$lambda-0(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/content/Context;)V

    return-void
.end method

.method private static final getSetting$lambda-0(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/content/Context;)V
    .locals 12

    const-string v0, "$keMu"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->e:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    :goto_0
    move-wide v3, v2

    const/4 v5, 0x0

    .line 4
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x60

    const/4 v11, 0x0

    move-object v2, p1

    move-object v6, p0

    .line 5
    invoke-static/range {v1 .. v11}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;->d(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;Landroid/content/Context;JZLcn/mucang/android/jiakaoyi/engine/model/KeMu;IZLf/a/a/a/j/c;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getSetting$lambda-1(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/content/Context;)V
    .locals 12

    const-string v0, "$keMu"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->e:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    :goto_0
    move-wide v3, v2

    const/4 v5, 0x0

    .line 4
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x60

    const/4 v11, 0x0

    move-object v2, p1

    move-object v6, p0

    .line 5
    invoke-static/range {v1 .. v11}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;->d(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;Landroid/content/Context;JZLcn/mucang/android/jiakaoyi/engine/model/KeMu;IZLf/a/a/a/j/c;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getSetting(ILandroidx/lifecycle/z;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "itemList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;

    const-string v3, "\u68c0\u6d4b\u8c03\u8bd5"

    invoke-direct {v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 4
    sget v5, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_signal:I

    .line 5
    new-instance v9, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$g;

    invoke-direct {v9}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$g;-><init>()V

    const-string v6, "\u8f66\u8f86\u4fe1\u53f7\u68c0\u6d4b"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe0

    const/4 v14, 0x0

    move-object v4, v2

    .line 6
    invoke-direct/range {v4 .. v14}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 9
    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_gear:I

    .line 10
    new-instance v20, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$h;

    invoke-direct/range {v20 .. v20}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$h;-><init>()V

    const-string v17, "\u6321\u4f4d\u5b66\u4e60"

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xe0

    const/16 v25, 0x0

    move-object v15, v2

    move/from16 v16, v4

    .line 11
    invoke-direct/range {v15 .. v25}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 14
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$i;

    invoke-direct {v8}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$i;-><init>()V

    const-string v5, "\u59ff\u6001\u6321\u4f4d\u5b66\u4e60"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v3, v2

    .line 15
    invoke-direct/range {v3 .. v13}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 18
    sget v15, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_check:I

    .line 19
    new-instance v19, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$j;

    invoke-direct/range {v19 .. v19}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$j;-><init>()V

    const-string v16, "\u7cfb\u7edf\u81ea\u68c0"

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xe0

    const/16 v24, 0x0

    move-object v14, v2

    .line 20
    invoke-direct/range {v14 .. v24}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 21
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    :cond_0
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 24
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$k;

    invoke-direct {v8}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$k;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    const-string v5, "\u8c03\u8bd5\u9875\u9762"

    move-object v3, v2

    .line 25
    invoke-direct/range {v3 .. v13}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 26
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;

    const-string v3, "\u89c4\u5219\u8bbe\u7f6e"

    invoke-direct {v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    goto :goto_0

    .line 30
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    goto :goto_0

    .line 32
    :cond_3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 33
    :goto_0
    new-instance v14, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 34
    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->ic_switch_exam_rule:I

    .line 35
    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v3

    const-string v5, "\u9ed8\u8ba4\u8003\u573a"

    if-nez v3, :cond_4

    :goto_1
    move-object v6, v5

    goto :goto_2

    :cond_4
    iget-object v3, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v6, v3

    :goto_2
    const/4 v7, 0x1

    .line 36
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$l;

    invoke-direct {v8, v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$l;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroidx/lifecycle/z;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc0

    const/4 v13, 0x0

    const-string v5, "\u8bc4\u5224\u89c4\u5219\u8003\u573a\u8bbe\u7f6e"

    move-object v3, v14

    .line 37
    invoke-direct/range {v3 .. v13}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 38
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 40
    sget v16, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_deduct:I

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 41
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$m;

    invoke-direct {v3, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$m;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    const/16 v21, 0x1

    const/16 v22, 0x0

    .line 42
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/g0;

    invoke-direct {v4, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/g0;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    const/16 v24, 0x40

    const/16 v25, 0x0

    const-string v17, "\u6263\u5206\u8bbe\u7f6e"

    move-object v15, v0

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    .line 43
    invoke-direct/range {v15 .. v25}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 44
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 46
    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_rule:I

    const/4 v8, 0x0

    .line 47
    new-instance v10, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$n;

    invoke-direct {v10, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$n;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 48
    new-instance v13, Lcn/mucang/jiakaoyi/uilib/ui/setting/d0;

    invoke-direct {v13, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/d0;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    const/16 v14, 0x40

    const/4 v15, 0x0

    const-string v7, "\u8bc4\u5224\u89c4\u5219"

    move-object v5, v0

    move v6, v4

    .line 49
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 53
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$a;

    invoke-direct {v8}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$a;-><init>()V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc0

    const/4 v13, 0x0

    const-string v5, "\u706f\u5149\u8bbe\u7f6e"

    move-object v3, v0

    .line 54
    invoke-direct/range {v3 .. v13}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;

    const-string v2, "\u8bbe\u5907\u7ba1\u7406"

    invoke-direct {v0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 58
    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_admin:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 59
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$12;

    invoke-direct {v8}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$12;-><init>()V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc0

    const/4 v13, 0x0

    const-string v5, "\u7ba1\u7406\u5458\u8bbe\u7f6e"

    move-object v3, v0

    .line 60
    invoke-direct/range {v3 .. v13}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 63
    sget v3, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_service:I

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 64
    new-instance v19, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$13;

    invoke-direct/range {v19 .. v19}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$13;-><init>()V

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xc0

    const/16 v24, 0x0

    const-string v16, "\u670d\u52a1\u5546\u8bbe\u7f6e"

    move-object v14, v0

    move v15, v3

    .line 65
    invoke-direct/range {v14 .. v24}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 68
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$b;

    invoke-direct {v7}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$b;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc0

    const/4 v12, 0x0

    const-string v4, "\u6559\u7ec3\u8bbe\u7f6e"

    move-object v2, v0

    .line 69
    invoke-direct/range {v2 .. v12}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 70
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;

    const-string v2, "\u53d1\u97f3\u8bbe\u7f6e"

    invoke-direct {v0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 73
    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_voice:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 74
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$c;

    invoke-direct {v8}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$c;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const-string v5, "\u53d1\u97f3\u8bbe\u7f6e"

    move-object v3, v0

    .line 75
    invoke-direct/range {v3 .. v13}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 76
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;

    const-string v2, "\u5173\u4e8e\u573a\u8003\u4eea"

    invoke-direct {v0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 79
    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_upgrade:I

    .line 80
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$d;

    invoke-direct {v8}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$d;-><init>()V

    const-string v5, "\u66f4\u65b0\u5347\u7ea7"

    move-object v3, v0

    .line 81
    invoke-direct/range {v3 .. v13}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 82
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 84
    sget v15, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_kefu:I

    const/16 v18, 0x0

    .line 85
    new-instance v19, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$e;

    invoke-direct/range {v19 .. v19}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$e;-><init>()V

    const/16 v20, 0x0

    const/16 v23, 0xe0

    const-string v16, "\u8054\u7cfb\u6211\u4eec"

    move-object v14, v0

    .line 86
    invoke-direct/range {v14 .. v24}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 87
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 89
    sget v3, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_app:I

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5b89\u88c5"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcom/mucang/android/jiakaoyi/uilib/R$string;->k3_app_name:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "App"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 91
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$f;

    invoke-direct {v7}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$f;-><init>()V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe0

    const/4 v12, 0x0

    move-object v2, v0

    .line 92
    invoke-direct/range {v2 .. v12}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
