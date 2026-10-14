.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/check/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/o;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/o;->b:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/o;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/o;->b:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->Q(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void
.end method
