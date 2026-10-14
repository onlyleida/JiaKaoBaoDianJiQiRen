.class public final Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;
.super Lcom/drakeet/multitype/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$dataAdapter$1",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
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


# instance fields
.field final synthetic c:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V
    .locals 12

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;->c:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/b0;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    const-string v1, "supportFragmentManager"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcn/mucang/jiakaoyi/uilib/rule/b0;-><init>(Landroidx/fragment/app/FragmentManager;ZZILkotlin/jvm/internal/o;)V

    .line 3
    const-class v2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-virtual {p0, v2, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/f0;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/rule/f0;-><init>(Landroidx/fragment/app/FragmentManager;ZZILkotlin/jvm/internal/o;)V

    .line 5
    const-class v2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    invoke-virtual {p0, v2, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/g0;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/rule/g0;-><init>(Landroidx/fragment/app/FragmentManager;ZZILkotlin/jvm/internal/o;)V

    .line 7
    const-class v2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    invoke-virtual {p0, v2, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 8
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/k0;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/rule/k0;-><init>(Landroidx/fragment/app/FragmentManager;ZZILkotlin/jvm/internal/o;)V

    .line 9
    const-class v2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    invoke-virtual {p0, v2, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 10
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/l0;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/rule/l0;-><init>(Landroidx/fragment/app/FragmentManager;ZZILkotlin/jvm/internal/o;)V

    .line 11
    const-class v2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    invoke-virtual {p0, v2, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 12
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/a0;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/rule/a0;-><init>(Landroidx/fragment/app/FragmentManager;ZZILkotlin/jvm/internal/o;)V

    .line 13
    const-class p1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;

    invoke-virtual {p0, p1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    return-void
.end method
