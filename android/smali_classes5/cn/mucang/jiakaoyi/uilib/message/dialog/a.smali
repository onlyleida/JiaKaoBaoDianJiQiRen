.class public final synthetic Lcn/mucang/jiakaoyi/uilib/message/dialog/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/message/dialog/g;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;

.field public final synthetic d:Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/message/dialog/g;Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/a;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/g;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/a;->b:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/a;->c:Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/a;->d:Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/a;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/g;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/a;->b:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/a;->c:Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/a;->d:Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->f(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Landroid/view/View;)V

    return-void
.end method
