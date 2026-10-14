.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ota/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/net/Uri;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/s;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/s;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/s;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/s;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;->I(Landroid/net/Uri;Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmWareManagerActivity;)V

    return-void
.end method
