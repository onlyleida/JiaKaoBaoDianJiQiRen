.class Lorg/libpag/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libpag/k$c;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/libpag/k$c;


# direct methods
.method constructor <init>(Lorg/libpag/k$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/libpag/l;->a:Lorg/libpag/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/libpag/k;->c()V

    return-void
.end method
