.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/net/Uri;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/e;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/e;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/e;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/e;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->v(Landroid/net/Uri;Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    return-void
.end method
