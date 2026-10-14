.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/c;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/c;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->t(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V

    return-void
.end method
