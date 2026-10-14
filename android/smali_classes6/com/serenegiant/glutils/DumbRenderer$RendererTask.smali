.class Lcom/serenegiant/glutils/DumbRenderer$RendererTask;
.super Lcom/serenegiant/glutils/EglTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/DumbRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RendererTask"
.end annotation


# instance fields
.field private frameHeight:I

.field private frameRotation:I

.field private frameWidth:I

.field private final mDelegater:Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;

.field private mirror:Z

.field private surfaceHeight:I

.field private surfaceWidth:I


# direct methods
.method public constructor <init>(ILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/DumbRenderer$RendererDelegater;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/glutils/EglTask;-><init>(ILcom/serenegiant/glutils/EGLBase$IContext;I)V

    .line 3
    iput-object p4, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->mDelegater:Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/DumbRenderer$RendererDelegater;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;-><init>(ILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/DumbRenderer$RendererDelegater;)V

    return-void
.end method

.method private varargs handleDraw([Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->mDelegater:Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;

    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->getEgl()Lcom/serenegiant/glutils/EGLBase;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;->onDraw(Lcom/serenegiant/glutils/EGLBase;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {}, Lcom/serenegiant/glutils/DumbRenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private handleMirror(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->mDelegater:Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;

    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->getEgl()Lcom/serenegiant/glutils/EGLBase;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;->onMirror(Lcom/serenegiant/glutils/EGLBase;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {}, Lcom/serenegiant/glutils/DumbRenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private handleResize(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->surfaceWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->surfaceHeight:I

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->surfaceWidth:I

    .line 3
    iput p2, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->surfaceHeight:I

    .line 4
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->mDelegater:Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;

    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->getEgl()Lcom/serenegiant/glutils/EGLBase;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;->onResize(Lcom/serenegiant/glutils/EGLBase;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Lcom/serenegiant/glutils/DumbRenderer;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->handleDraw([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private handleSetSurface(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->mDelegater:Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;

    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->getEgl()Lcom/serenegiant/glutils/EGLBase;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;->onSetSurface(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {}, Lcom/serenegiant/glutils/DumbRenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->mDelegater:Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;

    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->getEgl()Lcom/serenegiant/glutils/EGLBase;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;->onStart(Lcom/serenegiant/glutils/EGLBase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/serenegiant/glutils/DumbRenderer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->makeCurrent()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->mDelegater:Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;

    invoke-virtual {p0}, Lcom/serenegiant/glutils/EglTask;->getEgl()Lcom/serenegiant/glutils/EGLBase;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;->onStop(Lcom/serenegiant/glutils/EGLBase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/serenegiant/glutils/DumbRenderer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/serenegiant/utils/MessageTask$TaskBreak;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 p4, 0x3

    if-eq p1, p4, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->handleMirror(I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->handleResize(II)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p4, p1, p2

    .line 3
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->handleDraw([Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_3
    invoke-direct {p0, p4}, Lcom/serenegiant/glutils/DumbRenderer$RendererTask;->handleSetSurface(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
