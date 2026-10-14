.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/dialog/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/lang/Float;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/z;->a:Landroid/view/View;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/z;->b:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/z;->a:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/z;->b:Ljava/lang/Float;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a$a;->b(Landroid/view/View;Ljava/lang/Float;)V

    return-void
.end method
