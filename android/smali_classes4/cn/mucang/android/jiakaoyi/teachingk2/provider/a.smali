.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/j/c;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

.field public final synthetic b:Landroidx/lifecycle/z;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Landroidx/lifecycle/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/a;->b:Landroidx/lifecycle/z;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/a;->b:Landroidx/lifecycle/z;

    invoke-static {v0, v1, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$b0;->b(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Landroidx/lifecycle/z;IILandroid/content/Intent;)V

    return-void
.end method
