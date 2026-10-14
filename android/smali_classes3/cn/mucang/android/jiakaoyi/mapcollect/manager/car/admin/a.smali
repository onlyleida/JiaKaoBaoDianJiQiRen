.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/a;->b:Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/a;->b:Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->o(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V

    return-void
.end method
