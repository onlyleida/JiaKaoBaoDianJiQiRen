.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/i0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/i0;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/i0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/i0;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Ljava/util/List;)V

    return-void
.end method
