.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ota/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;->G(Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V

    return-void
.end method
