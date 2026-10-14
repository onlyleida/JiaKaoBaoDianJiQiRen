.class public Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider;
.super Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J*\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider;",
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
        "teachbase_release"
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


# virtual methods
.method public getSetting(ILandroidx/lifecycle/z;)Ljava/util/List;
    .locals 29
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

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "itemList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;

    const-string v6, "\u57fa\u7840\u8bbe\u7f6e"

    invoke-direct {v5, v6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 4
    sget v8, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->ic_car_setting:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 5
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$k;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$k;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xe0

    const/16 v17, 0x0

    const-string v9, "\u8f66\u8f86\u4fe1\u606f\u8bbe\u7f6e"

    move-object v7, v5

    .line 6
    invoke-direct/range {v7 .. v17}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 7
    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v3, :cond_1

    .line 8
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 9
    sget v19, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_car:I

    const/16 v21, 0x0

    const/16 v22, 0x1

    .line 10
    new-instance v23, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$v;

    invoke-direct/range {v23 .. v23}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$v;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xe0

    const/16 v28, 0x0

    const-string v20, "\u8f66\u8eab\u6570\u636e\u7ba1\u7406"

    move-object/from16 v18, v2

    .line 11
    invoke-direct/range {v18 .. v28}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 12
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 14
    sget v6, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_upgrade:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 15
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$x;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$x;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    const-string v7, "\u68c0\u67e5\u66f4\u65b0"

    move-object v5, v2

    .line 16
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 17
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    .line 18
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 19
    sget v17, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_ota:I

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 20
    new-instance v21, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$y;

    invoke-direct/range {v21 .. v21}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$y;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe0

    const/16 v26, 0x0

    const-string v18, "\u56fa\u4ef6\u7248\u672c"

    move-object/from16 v16, v2

    .line 21
    invoke-direct/range {v16 .. v26}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 22
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_2
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;

    const-string v5, "\u53c2\u6570\u914d\u7f6e"

    invoke-direct {v2, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 25
    sget v7, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_location:I

    const/4 v10, 0x1

    .line 26
    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$z;

    invoke-direct {v11, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$z;-><init>(Z)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe0

    const/16 v16, 0x0

    const-string v8, "\u8bad\u7ec3\u573a\u8bbe\u7f6e"

    const-string v9, ""

    move-object v6, v2

    .line 27
    invoke-direct/range {v6 .. v16}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 28
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_7

    .line 29
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 30
    sget v18, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_teaching:I

    const/16 v20, 0x0

    const/16 v21, 0x1

    .line 31
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$a0;

    invoke-direct {v5, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$a0;-><init>(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xe0

    const/16 v27, 0x0

    const-string v19, "\u6559\u5b66\u8bbe\u7f6e"

    move-object/from16 v17, v2

    move-object/from16 v22, v5

    .line 32
    invoke-direct/range {v17 .. v27}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 33
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 35
    sget v17, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->ic_switch_exam_rule:I

    .line 36
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v5

    const-string v18, "\u9ed8\u8ba4\u89c4\u5219\u7ec4"

    if-nez v5, :cond_3

    :goto_1
    move-object/from16 v9, v18

    goto :goto_2

    :cond_3
    iget-object v5, v5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v9, v5

    :goto_2
    const/4 v10, 0x1

    .line 37
    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$b0;

    invoke-direct {v11, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$b0;-><init>(Landroidx/lifecycle/z;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe0

    const/16 v16, 0x0

    const-string v8, "\u79d1\u4e8c\u8003\u8bd5\u8bc4\u5224\u89c4\u5219\u8bbe\u7f6e"

    move-object v6, v2

    move/from16 v7, v17

    .line 38
    invoke-direct/range {v6 .. v16}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 39
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 41
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v5

    if-nez v5, :cond_5

    :goto_3
    move-object/from16 v8, v18

    goto :goto_4

    :cond_5
    iget-object v5, v5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    move-object v8, v5

    :goto_4
    const/4 v9, 0x1

    .line 42
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$c0;

    invoke-direct {v10, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$c0;-><init>(Landroidx/lifecycle/z;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    const-string v7, "\u79d1\u4e09\u8003\u8bd5\u8bc4\u5224\u89c4\u5219\u8bbe\u7f6e"

    move-object v5, v2

    move/from16 v6, v17

    .line 43
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 44
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 46
    sget v19, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->ic_data:I

    const/16 v21, 0x0

    const/16 v22, 0x1

    .line 47
    new-instance v23, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$d0;

    invoke-direct/range {v23 .. v23}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$d0;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xe0

    const/16 v28, 0x0

    const-string v20, "\u5b89\u5168\u53c2\u6570\u7ba1\u7406"

    move-object/from16 v18, v1

    .line 48
    invoke-direct/range {v18 .. v28}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 49
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 51
    sget v6, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_dbd:I

    const/4 v8, 0x0

    .line 52
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$a;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$a;-><init>()V

    const-string v7, "\u9a7e\u9a76\u884c\u4e3a\u68c0\u6d4b\u8bbe\u7f6e"

    move-object v5, v1

    .line 53
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 54
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 56
    sget v17, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->ic_check_module:I

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 57
    new-instance v21, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$b;

    invoke-direct/range {v21 .. v21}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$b;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe0

    const-string v18, "\u81ea\u68c0\u6a21\u5757\u7ba1\u7406"

    move-object/from16 v16, v1

    .line 58
    invoke-direct/range {v16 .. v26}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 59
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_7
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;

    const-string v2, "\u68c0\u6d4b\u8c03\u8bd5"

    invoke-direct {v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 62
    sget v6, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_signal:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 63
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$c;

    invoke-direct {v10, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$c;-><init>(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    const-string v7, "\u8f66\u8f86\u4fe1\u53f7\u68c0\u6d4b"

    move-object v5, v1

    .line 64
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 65
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_9

    .line 66
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 67
    sget v17, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_leida:I

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 68
    new-instance v21, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$d;

    invoke-direct/range {v21 .. v21}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$d;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe0

    const/16 v26, 0x0

    const-string v18, "\u96f7\u8fbe\u4fe1\u53f7\u8c03\u8bd5"

    move-object/from16 v16, v0

    .line 69
    invoke-direct/range {v16 .. v26}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 70
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 72
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_calibration:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 73
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$e;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$e;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    const-string v7, "\u8f66\u673a\u53c2\u6570\u6807\u5b9a"

    move-object v5, v0

    move v6, v1

    .line 74
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 75
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 77
    sget v17, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_gear:I

    .line 78
    new-instance v21, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$f;

    invoke-direct/range {v21 .. v21}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$f;-><init>()V

    const-string v18, "\u533a\u57df\u6cd5\u6321\u4f4d\u6807\u5b9a"

    move-object/from16 v16, v0

    .line 79
    invoke-direct/range {v16 .. v26}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 80
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 82
    sget v6, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_brake:I

    .line 83
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$g;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$g;-><init>()V

    const-string v7, "\u5239\u8f66\u72b6\u6001\u5386\u53f2\u8bb0\u5f55"

    move-object v5, v0

    .line 84
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 85
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 87
    sget v17, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_ai:I

    .line 88
    new-instance v21, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$h;

    invoke-direct/range {v21 .. v21}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$h;-><init>()V

    const-string v18, "AI\u8c03\u8bd5"

    move-object/from16 v16, v0

    .line 89
    invoke-direct/range {v16 .. v26}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 90
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 92
    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_video:I

    .line 93
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$i;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$i;-><init>()V

    const-string v7, "\u89c6\u9891\u8bbe\u7f6e"

    move-object v5, v0

    move v6, v2

    .line 94
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 95
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 97
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$j;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$j;-><init>()V

    const-string v7, "\u4eba\u8138\u767b\u5f55\u8bbe\u7f6e"

    move-object v5, v0

    .line 98
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 99
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableSundial:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 101
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 102
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$l;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$l;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    const-string v7, "\u8ba1\u65f6\u62cd\u7167\u8bbe\u7f6e"

    move-object v5, v0

    move v6, v2

    .line 103
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 104
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_8
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 106
    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_camera:I

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 107
    new-instance v21, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$m;

    invoke-direct/range {v21 .. v21}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$m;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe0

    const/16 v26, 0x0

    const-string v18, "\u6444\u50cf\u5934\u7ba1\u7406"

    move-object/from16 v16, v0

    move/from16 v17, v2

    .line 108
    invoke-direct/range {v16 .. v26}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 109
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 111
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$n;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$n;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    const-string v7, "\u7535\u5b50\u56f4\u680f\u8c03\u8bd5"

    move-object v5, v0

    move v6, v2

    .line 112
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 113
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 115
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$o;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$o;-><init>()V

    const-string v7, "\u5b9a\u70b9\u5239\u8f66\u8c03\u8bd5"

    move-object v5, v0

    .line 116
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 117
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 119
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$p;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$p;-><init>()V

    const-string v7, "\u81ea\u52a8\u793a\u6559\u8c03\u8bd5"

    move-object v5, v0

    move v6, v1

    .line 120
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 121
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 123
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$q;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$q;-><init>()V

    const-string v7, "\u9a8c\u6536\u6a21\u5f0f"

    move-object v5, v0

    .line 124
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 125
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_9
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;

    const-string v1, "\u5176\u4ed6\u914d\u7f6e"

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/y0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 128
    sget v6, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_voice:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 129
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$r;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$r;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    const-string v7, "\u8bed\u97f3\u8bbe\u7f6e"

    move-object v5, v0

    .line 130
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 131
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 133
    sget v6, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->setting_ic_kefu:I

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 134
    new-instance v21, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$s;

    invoke-direct/range {v21 .. v21}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$s;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe0

    const/16 v26, 0x0

    const-string v18, "\u8054\u7cfb\u6211\u4eec"

    move-object/from16 v16, v0

    move/from16 v17, v6

    .line 135
    invoke-direct/range {v16 .. v26}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 136
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 138
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 139
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$t;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$t;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    const-string v7, "\u8bed\u8a00\u5207\u6362"

    move-object v5, v0

    .line 140
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 141
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_a
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 143
    :cond_b
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 144
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$u;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$u;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    const-string v7, "\u8c03\u8bd5\u9875\u9762"

    move-object v5, v0

    .line 145
    invoke-direct/range {v5 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 146
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 148
    new-instance v21, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$w;

    invoke-direct/range {v21 .. v21}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$w;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe0

    const/16 v26, 0x0

    const-string v18, "\u786c\u4ef6\u534f\u8bae\u8c03\u8bd5"

    move-object/from16 v16, v0

    .line 149
    invoke-direct/range {v16 .. v26}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 150
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v4
.end method
