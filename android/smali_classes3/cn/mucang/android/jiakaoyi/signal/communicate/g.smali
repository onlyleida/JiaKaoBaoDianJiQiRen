.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:B


# direct methods
.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/g;->a:B

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/g;->a:B

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->d(B)[B

    move-result-object v0

    return-object v0
.end method
