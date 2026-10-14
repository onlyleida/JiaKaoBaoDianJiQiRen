.class public final synthetic Lcn/mucang/jiakaoyi/uilib/socket/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/a;->a:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/a;->a:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->i(Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method
