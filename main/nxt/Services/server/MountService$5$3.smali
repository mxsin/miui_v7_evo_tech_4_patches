.class Lcom/android/server/MountService$5$3;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$5;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    # getter for: Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/MountService;->access$3100()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "MountService"

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "mounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v5, v9, v10}, Lcom/android/server/MountService;->unmountVolumeNotSwap(Ljava/lang/String;ZZ)V

    const/4 v2, 0x0

    :goto_1
    const/16 v7, 0x14

    if-ge v2, v7, :cond_0

    const-wide/16 v9, 0x3e8

    invoke-static {v9, v10}, Lcom/android/server/MountService$5$3;->sleep(J)V

    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "unmounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "MountService"

    const-string v9, "Unmount Succeeded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v5}, Lcom/android/server/MountService;->formatVolume(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    const-string v7, "MountService"

    const-string v9, "SD format Succeed!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v7, "shared"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v9, "ums"

    const/4 v10, 0x0

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v7, v5, v9, v10}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v7, "MountService"

    const-string v9, "SD format exception"

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :cond_3
    :try_start_3
    const-string v7, "MountService"

    const-string v9, "SD format Failed!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_4
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void
.end method