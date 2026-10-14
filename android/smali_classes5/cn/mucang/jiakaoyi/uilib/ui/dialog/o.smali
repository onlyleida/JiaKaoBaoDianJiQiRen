.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/dialog/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->e(Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/content/DialogInterface;)V

    return-void
.end method
