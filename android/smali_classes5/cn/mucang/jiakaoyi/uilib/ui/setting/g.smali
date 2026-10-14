.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/AboutActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/AboutActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/g;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/AboutActivity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/g;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/AboutActivity;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/AboutActivity;->m(Lcn/mucang/jiakaoyi/uilib/ui/setting/AboutActivity;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
