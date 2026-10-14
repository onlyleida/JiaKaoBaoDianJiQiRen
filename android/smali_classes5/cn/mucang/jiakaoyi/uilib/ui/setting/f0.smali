.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/j/c;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field public final synthetic c:Landroidx/lifecycle/z;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroidx/lifecycle/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/f0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/f0;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/f0;->c:Landroidx/lifecycle/z;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/f0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/f0;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/f0;->c:Landroidx/lifecycle/z;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$l;->b(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroidx/lifecycle/z;IILandroid/content/Intent;)V

    return-void
.end method
