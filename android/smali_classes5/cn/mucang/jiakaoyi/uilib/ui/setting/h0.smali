.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/h0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/h0;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/h0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/h0;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/PriceModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;Lcn/mucang/jiakaoyi/uilib/model/PriceModel;)V

    return-void
.end method
