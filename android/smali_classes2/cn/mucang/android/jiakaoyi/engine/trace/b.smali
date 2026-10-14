.class public final synthetic Lcn/mucang/android/jiakaoyi/engine/trace/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/b;->a:Ljava/lang/String;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/b;->a:Ljava/lang/String;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/b;->b:I

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->w(Ljava/lang/String;I)V

    return-void
.end method
