.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/m;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/m;Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/m;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/a;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/m;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/a;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/m;->n(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/m;Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;Landroid/view/View;)V

    return-void
.end method
