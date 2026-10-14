.class public Lcom/serenegiant/glutils/RendererHolder;
.super Lcom/serenegiant/glutils/AbstractRendererHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/RendererHolder$MyRendererTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RendererHolder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/RenderHolderCallback;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/serenegiant/glutils/AbstractRendererHolder;-><init>(IIILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/RenderHolderCallback;)V

    return-void
.end method

.method public constructor <init>(IILcom/serenegiant/glutils/RenderHolderCallback;)V
    .locals 7

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/glutils/RendererHolder;-><init>(IIILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/RenderHolderCallback;)V

    return-void
.end method


# virtual methods
.method protected createRendererTask(IIILcom/serenegiant/glutils/EGLBase$IContext;I)Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;
    .locals 8

    .line 1
    new-instance v7, Lcom/serenegiant/glutils/RendererHolder$MyRendererTask;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/glutils/RendererHolder$MyRendererTask;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V

    return-object v7
.end method
