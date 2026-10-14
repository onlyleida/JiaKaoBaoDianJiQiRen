.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ota/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ota/x;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ota/x;Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ota/x;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ota/x;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ota/x;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ota/x;Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;Landroid/view/View;)V

    return-void
.end method
