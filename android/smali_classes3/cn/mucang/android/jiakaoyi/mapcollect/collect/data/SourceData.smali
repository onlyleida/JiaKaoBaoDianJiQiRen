.class public interface abstract Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract canTurnOrientation()Z
.end method

.method public abstract copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
.end method

.method public abstract createKey()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTime()J
.end method

.method public abstract giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
.end method

.method public abstract set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setTime(J)V
.end method

.method public abstract stepId()I
.end method

.method public abstract turnOrientation()V
.end method
