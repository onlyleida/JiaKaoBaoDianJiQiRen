.class public final Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$d;
.super Lcom/drakeet/multitype/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;->onCreate(Landroid/os/Bundle;)V
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
        "cn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$onCreate$deductAdapter$1",
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
.field final synthetic c:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;)V
    .locals 12

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$d;->c:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/deduct/z;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    const-string v1, "supportFragmentManager"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;->g(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcn/mucang/jiakaoyi/uilib/deduct/z;-><init>(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILkotlin/jvm/internal/o;)V

    .line 3
    const-class p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    invoke-virtual {p0, p1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    return-void
.end method
