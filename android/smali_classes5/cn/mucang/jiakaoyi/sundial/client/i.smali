.class public final synthetic Lcn/mucang/jiakaoyi/sundial/client/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/b/a;

.field public final synthetic g:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->c:Z

    iput-object p4, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p5, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->e:Z

    iput-object p6, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->f:Lkotlin/jvm/b/a;

    iput-object p7, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->g:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->c:Z

    iget-object v3, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-boolean v4, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->e:Z

    iget-object v5, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->f:Lkotlin/jvm/b/a;

    iget-object v6, p0, Lcn/mucang/jiakaoyi/sundial/client/i;->g:Lkotlin/jvm/b/a;

    invoke-static/range {v0 .. v6}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$b;->a(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method
