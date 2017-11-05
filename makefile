cc=g++
exe=threadpool_web_server
obj=threadpool_web_server.o http_conn.o
$(exe):$(obj)
	$(cc) -o $(exe) $(obj) -lpthread -lrt
threadpool_web_server.o:threadpool_web_server.cpp
	$(cc) -c threadpool_web_server.cpp
http_conn.o:http_conn.cpp
	$(cc) -c http_conn.cpp
clean:
	rm -rf *.o main
