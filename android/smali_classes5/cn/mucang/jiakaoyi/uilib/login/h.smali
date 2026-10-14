.class public final synthetic Lcn/mucang/jiakaoyi/uilib/login/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/h;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/h;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->w(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/DialogInterface;)V

    return-void
.end method
