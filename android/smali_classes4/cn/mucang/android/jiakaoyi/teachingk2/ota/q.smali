.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ota/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/q;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/q;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity$b;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    return-void
.end method
