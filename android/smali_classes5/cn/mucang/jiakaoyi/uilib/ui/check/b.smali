.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/check/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/b;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/b;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/b;->c:Ljava/lang/String;

    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/b;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/b;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/b;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/b;->c:Ljava/lang/String;

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/b;->d:I

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->G(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)V

    return-void
.end method
